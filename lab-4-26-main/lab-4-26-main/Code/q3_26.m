% Question 3

[y,Fs] = audioread('file_example_WAV_1MG.wav');

B = 3;
a = 1;

yq = quadratic_quant(y,B,a);

%sound(y,Fs);
%sound(yq,Fs);

% the sound quality of the second signal is much worse than the quality of
% the original signal.

pause('on')

for n = 1:8
    yq = quadratic_quant(y,n,a);
    sound(yq,Fs);
    pause(35)
    clear sound
end

% as n increases, the quality of audio also improves.
% Quantization decreases the frequency content of the signal as a range of values is mapped to a particular value. When you increase value of B the frequency content also increases.
