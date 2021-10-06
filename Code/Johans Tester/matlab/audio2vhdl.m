% Read a wave file and write its samples as a VHDL code, to be put into block RAMs
% Usage:
% * audio2vhd('wavefile.wav')
%   (read wavefile.wav. Generate wavefile.vhd with entity wavefile)
% * audio2vhd('wavefile.wav', 'soundmem.vhd')
%   (read wavefile.wav. Generate soundmem.vhd with entity soundmem)
% * audio2vhd('wavefile.wav', 'soundmem.vhd', options), where options can be:
%   * 'entity', 'entityname': Name the entity (default = vhdl file name).
%   * 'Fs', Fs_res          : Resample the sound to Fs_res (default: don't resample).
%   * 'Fs_rel', factor      : Resample a factor (0.5 gives downsampling).
%   * 'WL', b               : Quantize the output to b bits, incl. sign bit. Default = 9.
%   * 'doplot'              : Plot the waves (input, and quantized/resampled output).
%   * 'doplayorig'          : Play the original song.
%   * 'doplay'              : Play the result song (after the original if both).
function audio2vhdl(wavfile, vhdfile, varargin)
  if nargin<1, wavfile = 'a_done_xx.wav'; end
  if nargin<2, vhdfile = strrep(wavfile,'.wav','.vhd'); end
  
  % Get parameters and default values:
  [s_orig, Fs] = audioread(wavfile);
  Fs_res = Fs;
  n = length(s_orig);
  WLd = 9; % #data bits
  ename = strrep(vhdfile,'.vhd',''); % entity name
  doplot = false;
  doplay = false;
  doplayorig = false;
  
  % Handle parameters
  ptr=1; % pointer to "current parameter".
  while ptr <= length(varargin)
    cmd = varargin{ptr}; ptr = ptr + 1;
    assert(ischar(cmd), 'audio2vhdl:arg', 'audio2vhdl: Expected a string as arg number %d', ptr+2);
    switch lower(cmd)
      case 'entity', ename = varargin{ptr}; ptr = ptr + 1;
      case 'fs',     Fs_res = varargin{ptr}; ptr = ptr + 1;
      case 'fs_rel', Fs_res = Fs*varargin{ptr}; ptr = ptr + 1;
      case 'wl',     WLd = varargin{ptr}; ptr = ptr + 1;
      case 'doplot', doplot = true;
      case 'doplayorig', doplayorig = true;
      case 'doplay', doplay = true;
      otherwise
        error(['audio2vhdl: Unexpected argument: ', cmd]);
    end
  end
  
  % Resample if asked for:
  if Fs ~= Fs_res
    s = my_resample(s_orig, Fs, Fs_res);
  else
    s = s_orig;
  end
  WLa = ceil(log2(length(s))); % #address bits
  
  % Print a summary:
  fprintf('/- Saving sound as VHDL code: -\n');
  fprintf('| Input file = %s\n', wavfile);
  if Fs_res == Fs
    fprintf('| Sample rate = %g\n', Fs);
    fprintf('| Length = %d samples = %g sec\n', n, n/Fs);
  else
    fprintf('| Input Sample rate = %g\n', Fs);
    fprintf('| Output Sample rate = %g\n', Fs_res);
    fprintf('| Input length = %d samples = %g sec\n', n, n/Fs);
    fprintf('| Output length = %d samples = %g sec\n', n*Fs_res/Fs, n/Fs);
  end
  fprintf('| #addr bits = %d\n', WLa);
  fprintf('| #data bits = %d (incl sign bit)\n', WLd);
  fprintf('| Output file = %s\n', vhdfile);
  fprintf('| entity name = %s\n', ename);
  
  % scale/quantize s so it's within +-2^(b-1) with average at 0.
  % (scale s_orig in the same way)
  s_orig = s_orig - mean(s); % average at 0
  s = s - mean(s);           % average at 0
  factor = (2^(WLd-1)-1)/max(abs(s));
  s_orig = s_orig * factor; % scale both the original
  s = round(s * factor);    % ... and the modified
  
  % Plotting (wave on top, freq resp below):
  if doplot
    subplot(2,1,1); title(wavfile);
    plot((0:n-1)/Fs, s_orig, 'ro-'); hold on;
    plot((0:length(s)-1)/Fs_res, s, 'b.-');
    grid on;
    legend('.wav', 'res');
    xlabel('Time [s]'); ylabel('Amplitude [ulp]');
    
    subplot(2,1,2); title('Spectrum');
    f = 20*log10(abs(fft(s_orig))); f = f(1:floor(end/2+1));
    plot((0:length(f)-1) * (Fs/n), f, 'ro'); hold on;
    f = 20*log10(abs(fft(s))); f = f(1:floor(end/2+1));
    plot((0:length(f)-1) * (Fs_res/length(s)), f, 'b.');
    grid on;
    xlabel('Freq [Hz]'); ylabel('Magnitude [dB]');
  end
  
  % Play result (comment out to shut up)
  if doplayorig
    sound(s_orig/2^(WLd-1),Fs);
    if doplay
      % wait for the first song to end
      pause(length(s)/Fs);
    end
  end
  if doplay
    fprintf('| Playing sound\n');
    sound(s/2^(WLd-1), Fs_res);
  end
  
  % Prepare VHDL writing...
  fprintf('| Generating VHDL file...');
  s(s<0) = s(s<0) + 2^WLd; % dec2bin can't handle signed values. This is a work-around.
  n = length(s);
  fid = fopen(vhdfile, 'w');
  % Create a function for simpler writing: p('yada\n') rather than fprintf(fid, 'yada\n')
  function p(varargin)
    fprintf(fid, varargin{:});
  end
  
  NBlockAbits = 10; % #addres bits per block
  NBlocks = floor((n-1)/(2^NBlockAbits))+1;
  % Write the damn VHDL file:
  p('library ieee;\n');
  p('use ieee.std_logic_1164.all;\n');
  p('use ieee.numeric_std.all;\n');
  p('\n');
  p('entity %s is\n', ename);
  p('  port(clk  : in std_logic;\n');
  p('       addr : in unsigned(%d-1 downto 0); -- range 0..%d-1\n',WLa,n);
  p('       data : out signed(%d-1 downto 0)); -- latency=2 clock cycles\n',WLd);
  p('end entity;\n');
  p('\n');
  p('architecture rtl of %s is\n', ename);
  p('  constant Nrows : integer := %d; -- total size\n', n);
  p('  constant NBlockAbits : integer := %d; -- Each block has 2^NBlockAbits\n', NBlockAbits);
  p('  constant NBlocks : integer := (Nrows-1)/2**NBlockAbits+1; -- = %d\n', NBlocks);
  p('  -- Strategy:\n');
  p('  -- Implement NBlocks number of M9k memories (2^NBlockAbits x 9 bits).\n');
  p('  -- Declare a small array of length NBlocks, where each element is the output from an M9k.\n');
  p('  -- Put a (registered) multiplexer on the output.\n');
  p('  subtype word_t is signed(9-1 downto 0);\n');
  p('  type m9k_t is array(0 to 2**NBlockAbits-1) of word_t;\n');
  p('  type rom_out_vec_t is array(0 to NBlocks-1) of word_t;\n');
  p('  signal data_vec : rom_out_vec_t; -- assigned from NBlocks different ROMs.\n');
  p('  signal '); p('rom%d,',0:NBlocks-2); p('rom%d : m9k_t;\n', NBlocks-1);
  p('  signal addr_upper : unsigned(addr''left-NBlockAbits downto 0);\n');
  p('begin\n');
  p('  process(clk) begin\n');
  p('    if rising_edge(clk) then\n');
  p('      -- Generate the NBlocks M9k memories (pipelined output):\n');
  for i=0:NBlocks-1
    p('      data_vec(%d) <= rom%d(to_integer(addr(NBlockAbits-1 downto 0)));\n', i, i)
  end
  p('      -- Also pipeline the upper part of the address:\n');
  p('      addr_upper <= addr(addr''left downto NBlockAbits);\n');
  p('      \n');
  p('      -- Use the upper address to multiplex the right output:\n');
  p('      data <= data_vec(to_integer(addr_upper));\n');
  p('    end if;\n');
  p('  end process;\n');
  % Print all but the last block (that is special...)
  p('  \n');
  p('  -- Last thing to do: Define the content of rom<0..%d>:\n', NBlocks-1);
  Nrows = 2^NBlockAbits;
  for i=0:NBlocks-2
    p('  rom%d <= (\n', i);
    for addr=0:Nrows-2 % Print all but the last line (that is special...)
      p('%d=>"%s",\n',addr,dec2bin(s(addr+Nrows*i+1),WLd));
    end
    p('%d=>"%s");\n', Nrows-1,dec2bin(s(Nrows*(i+1)),WLd)); % Last line.
  p('  \n');
  end
  % Last block:
  i = NBlocks-1;
  p('  rom%d <= (\n', i);
  for addr=0:(n-Nrows*i-1) % print all lines
    p('%d=>"%s",\n',addr,dec2bin(s(addr+Nrows*i+1),WLd));
  end
  p('others=>(others=>''0''));\n');
  p('end architecture;\n');
  fclose(fid);
  fprintf(' done\n');
  fprintf('\\- Done\n');
end

function y = my_resample(x, Fs_x, Fs_y)
  N1 = length(x); % number of input samples
  N2 = round(N1*Fs_y/Fs_x); % number of output samples
  
  % The FFT version is sloppy, gives good result, and scales really bad when size(x) grows.
  % (but the result must fit in an FPGA, so if size(x) gets too big, we anyway have problems)
  X1 = fft(x); % Frequency spectrum
  if N2 >= N1
    % upsample <=> Inject zeros in the middle of X1
    % If N1 is odd, e.g. five: X2 = [X1(1) X1(2) X1(3) 0 ... 0 X1(4) X1(5)]'
    % If N1 is even, e.g. six: X2 = [X1(1) X1(2) X1(3) 0 ... 0 X1(4) X1(5) X1(6)]'
    Nhalf = ceil(N1/2); % 3 in the examples above
    X2 = [X1(1:Nhalf); zeros(1,N2-N1)'; X1(Nhalf+1:N1)];
  else
    % downsample (for real)
    % If N2 is odd, e.g. five: X2 = [X1(1) X1(2) X1(3)  X1(N1-1) X1(N1)]'
    % If N2 is even, e.g. six: X2 = [X1(1) X1(2) X1(3)  XX X1(N1-1) X1(N1)]'
    %                    where XX = (X1(4)+X1(N1-2))/2
    Nhalf = ceil(N2/2);
    if N2 > 2*Nhalf % odd case
      X2 = [X1(1:Nhalf); X1(end-Nhalf+2:end)];
    else
      X2 = [X1(1:Nhalf); (X1(Nhalf+1)+X1(N1-Nhalf+1))/2; X1(N1-Nhalf+2:N1)];
    end
  end
  y = ifft(X2) * (Fs_y/Fs_x);
  if max(abs(imag(y))) > max(abs(real(y)))*2^-40
    warning('Unexpected imaginary parts of ifft result');
  end
  y = real(y);
end

