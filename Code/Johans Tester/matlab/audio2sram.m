

inFile={'Bass_1.wav','Bassline.wav','Beat.wav','Gun16.wav','SynthBass.wav'};
outFile = 'playsound.bin';

y = [];
for i = 1:length(inFile)

    [w, Fs] = audioread(inFile{i}); % use wavread for Matlab 2012  
    Lengths(i) = length(y);
    y = [y; sum(w,2)/size(w,2)]; % Makes stereo to mono
    
end
     

plot(y)
sound(y,Fs) % Uncomment to listend to the sound

b = 16; %Quantization bits;
q = decAbin((y*2^(b-1)));
Lengths(length(inFile)+1) = size(q,2);
disp(Lengths)

L = size(q,2);


qMSB = q(1:8,:);
qLSB = q(9:16,:);

dMSB = binAdec([zeros(1,size(qMSB,2)); qMSB]); 
dLSB = binAdec([zeros(1,size(qLSB,2)); qLSB]); 

x = uint8(reshape([dMSB;dLSB],1,2*L))';

fp = fopen(outFile,'w');
fwrite(fp,x);
fclose(fp);

