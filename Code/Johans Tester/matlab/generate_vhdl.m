clc; clear variables; close all;
fs = 48828; WL = 16;
audio2vhdl('beep-06.wav', 'wavefile.vhd', 'Fs', fs, 'WL', WL );