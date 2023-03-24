% part a:(...)



% part b:
clc
% define relevant parameters
T = 1               %partb
N = 10.*T             %partb
T1 = 0.1           %partb
t1 = -T1            %partb
t2 = T1             %partb
% define relevant expressions
syms t;
xt = 1                                          %partb
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N).*T;
% plotting
FS_idx = -N:N;
figure; stem(FS_idx,F); grid on;
% (conclusion for part b)...

%part c:
