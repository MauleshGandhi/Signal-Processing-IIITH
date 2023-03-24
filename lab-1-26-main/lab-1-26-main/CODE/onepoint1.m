clc
% define relevant parameters
%T = 1              %parta
%N = 5              %parta
%t1 = -T ./2        %parta
%t2 = T ./2         %parta
T = 1               %partb
N = 10              %partb
T1 = T./4           %partb
t1 = -T1            %partb
t2 = T1             %partb
% define relevant expressions
syms t;
%xt = 2.*cos(2.*t.*pi) + cos(6.*pi.*t)          %parta      % sum of cosines wave
xt = 1                                          %partb
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
% plotting
FS_idx = -N:N;
figure; stem(FS_idx,F); grid on;