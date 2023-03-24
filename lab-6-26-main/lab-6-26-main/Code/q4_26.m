fs = 10000;
adsr = [0.2,0.2,0.7,0.4,0.2];

%part a

F_notes = 50:5:100;
N = 11;
A = zeros(N,1);
for k = 1:N
    A(k) = 1/(k.^2);
    td_notes(k) = 1;
end
P = zeros(N,1);
yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
%sound(yn,fs)

%part b

F_notes = 100:-10:40;
N = 7;
A = zeros(N,1);
for k = 1:N
    A(k) = 1/(k.^2);
    td_notes(k) = 1;
end
P = zeros(N,1);
yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
%sound(yn,fs)

%part c

M = 5;
F_notes = 50 + 50*rand(1,M);
td_notes = 0.5 + rand(1,M);
N = 5;
A = zeros(N,1);
for k = 1:N
    A(k) = 1/(k.^2);
    td_notes(k) = 1;
end
P = zeros(N,1);
yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
%sound(yn,fs)

%part d
F_notes = [493.88,493.88,523.25,587.33,587.33,523.25,493.88,440,392,392];

N = 10;
A = zeros(N,1);
for k = 1:N
    A(k) = 7;
    td_notes(k) = 0.5;
end
P = zeros(N,1);
yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
sound(yn,fs)

%part e
filename = 'audio.wav';
audiowrite(filename,yn,fs);
