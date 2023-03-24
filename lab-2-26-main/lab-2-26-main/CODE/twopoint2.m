
%part b
clc
% define relevant parameters
w0_FS = 1;
wc = 2;
%wc = 0.5;
T = 2*pi;
t = -2*T:0.01:2*T;
A = [0
    0
    1./2
    0
    1./2
    0
    0];
% define relevant expressions
B = myLPF(A,w0_FS,wc);
m = partialfouriersum(A,T,t);
n = partialfouriersum(B,T,t);
%plotting
plot(t,real(m),'-b');
hold on;
plot(t,real(n),'-r');                          
grid on;        
hold off;
title('LPF');

%part c
clc
% define relevant parameters
w0_FS = 1;
%wc = 2;
wc = 0.5;
T = 2.*pi;
t = -2*T:0.01:2*T;
A = [0
    0
    1./2
    0
    1./2
    0
    0];
% define relevant expressions
B = myHPF(A,w0_FS,wc);
m = partialfouriersum(A,T,t);
n = partialfouriersum(B,T,t);
%plotting
plot(t,real(m),'-b');                          
hold on;
plot(t,real(n),'-r');                          
grid on;        
hold off; 
title('HPF');

%part d
clc
% define relevant parameters
w0_FS = 1;
T = 2.*pi;
t = -2*T:0.01:2*T;
A = [0
    0
    1./2
    0
    1./2
    0
    0];
G = 1;
a = 1;
% define relevant expressions
B = NonIdeal(A,w0_FS,G,a);
m = partialfouriersum(A,T,t);
n = partialfouriersum(B,T,t);
%plotting
plot(t,real(m),'-b');                          
hold on;
plot(t,real(n),'-r');                          
grid on;        
hold off; 
title('Non Ideal');


% PART E

%part b
clc
% define relevant parameters
wc = 2.5;
T = 2*pi;
w0_FS = 2*pi/T;
t = -2*T:0.01:2*T;
A = [0
    1/2
    1j/2
    0
    0
    0
    -1j/2
    1/2
    0];
% define relevant expressions
B = myLPF(A,w0_FS,wc);
m = partialfouriersum(A,T,t);
n = partialfouriersum(B,T,t);
%plotting
plot(t,real(m),'-b');                          %part a&b
hold on;
plot(t,real(n),'-r');                          %part b
grid on;        
hold off;
title('LPF');

%part c
clc
% define relevant parameters
wc = 2.5;
T = 2*pi;
w0_FS = 2*pi/T;
t = -2*T:0.01:2*T;
A = [0
    1/2
    1j/2
    0
    0
    0
    -1j/2
    1/2
    0];
% define relevant expressions
B = myHPF(A,w0_FS,wc);
m = partialfouriersum(A,T,t);
n = partialfouriersum(B,T,t);
%plotting
plot(t,real(m),'-b');                          
hold on;
plot(t,real(n),'-r');                          
grid on;        
hold off; 
title('HPF');

%part d
clc
% define relevant parameters
wc = 2.5;
T = 2*pi;
w0_FS = 2*pi/T;
t = -2*T:0.01:2*T;
A = [0
    1/2
    1j/2
    0
    0
    0
    -1j/2
    1/2
    0];
G = 1;
a = 1;
% define relevant expressions
B = NonIdeal(A,w0_FS,G,a);
m = partialfouriersum(A,T,t);
n = partialfouriersum(B,T,t);
%plotting
plot(t,real(m),'-b');                          
hold on;
plot(t,real(n),'-r');                          
grid on;        
hold off;
title('Non Ideal');
