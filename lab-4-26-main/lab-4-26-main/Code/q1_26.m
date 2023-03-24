% Question 1

% bit rate of audio file 1 : 256kbps
% bit rate of audio file 2 : 512kbps
% bit rate of audio file 3 : 1411kbps
% bit rate of audio file 4 : 1411kbps

[a,Fs1] = audioread('file_example_WAV_1MG.wav');
[b,Fs2] = audioread('file_example_WAV_2MG.wav');
[c,Fs3] = audioread('file_example_WAV_5MG.wav');
[d,Fs4] = audioread('file_example_WAV_10MG.wav');

% Fs of file 1 : 8000
% Fs of file 2 : 16000
% Fs of file 3 : 44100
% Fs of file 4 : 44100

% duration = number of samples/sampling frequency
% duration of file 1 : 268237/8000 = 33.529 seconds
% duration of file 2 : 536474/16000 = 33.529 seconds
% duration of file 3 : 1306624/44100 = 29.628 seconds
% duration of file 4 : 2601617/44100 = 58.993 seconds

% bit rate = bits used * sampling frequency * number of channels
% bits used in file 1 : 256000/(8000*2) = 16
% bits used in file 2 : 512000/(16000*2) = 16
% bits used in file 3 : 1411000/(44100*2) = 16
% bits used in file 4 : 1411000/(44100*2) = 16
% this adc can perform 2^16 levels of quantisation

%sound(a,Fs1);
%sound(b,Fs2);
%sound(c,Fs3);
%sound(d,Fs4);

% the lower we make the sampling frequency, the slower it plays the audio

% the higher we make the sampling frequency, the faster it plays the audio

% the property of fourier trasform which can be used to explain the above
% observations is time and frequency scaling