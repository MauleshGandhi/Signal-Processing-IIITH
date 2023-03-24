%part a:
clc
% define relevant parameters
T = 1              
N = 10             
t1 = -1./4         
t2 = 1./4          

% define relevant expressions
syms t;
x1t = abs(t)                                        

% function call to find FS coefficients
F = fourierCoeff(t,x1t,T,t1,t2,N);

% plotting
FS_idx = -N:N;
figure; stem(FS_idx,F); grid on;
hold on
%part b:

%define relevant expressions
x2t = t

% function call to find FS coefficients
F = fourierCoeff(t,x2t,T,t1,t2,N);

% plotting
FS_idx = -N:N;
figure; stem(FS_idx,F); grid on;
hold off
%part c(...):

%An odd function has only sine terms in its Fourier expansion.  real even signals have y axis symmetry. real odd signals have origin symmetry.
