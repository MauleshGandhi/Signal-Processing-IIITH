%part a

w0 = pi/4;
b0 = 1./((1 - exp(j.*w0)).*(1 - exp(-j.*w0)));
b1 = [1, -exp(j.*w0)];
b2 = [1, -exp(-j.*w0)];
ax = 1;
bx = b0*conv(b1,b2);
[h,w] = freqz(bx,ax,2001);
plot(w,abs(h))
title('Frequency response of FIR filter')

%part b
%{
w0 = pi/4;
r0 = 0.9
b0 = ((1 - r0.*exp(j.*w0)).*(1 - r0.*exp(-j.*w0)))./((1 - exp(j.*w0)).*(1 - exp(-j.*w0)));
b1 = [1, -exp(j.*w0)];
b2 = [1, -exp(-j.*w0)];
a1 = [1, -r0.*exp(j.*w0)];
a2 = [1, r0.*exp(-j.*w0)];
by = b0*conv(b1,b2);
ay = conv(a1,a2);
[h,w] = freqz(by,ay,2001);
plot(w,abs(h))
title('Frequency response of FIR filter')
%}

% part c
%     Part (A) - FIR Filter
%
%     Zeros : e^(+-jω0)) }
%     Poles : 0 
%     ROC = C - {0} :  Always causal and stable

%     Part (B) - IIR Filter
%
%     r0 = 0.9
%     Zeros : e^(+-jω0) 
%     Poles : r0*e^(+-jω0) 
%     ROCs : 
%     |z| < r0 : anti-causal and unstable
%     |z| > r0 : causal and stable

%part d
% part d_a
%{
b0 = 1./((1 - exp(j.*w0)).*(1 - exp(-j.*w0)));
fvtool(b0*conv(b1,b2),1)
%}
% part d_b
%{
%r0 = 0.5
r0 = 0.99 
b0 = ((1 - r0.*exp(j.*w0)).*(1 - r0.*exp(-j.*w0)))./((1 - exp(j.*w0)).*(1 - exp(-j.*w0)));
b1 = [1, -exp(j.*w0)];
b2 = [1, -exp(-j.*w0)];
a1 = [1, -r0.*exp(j.*w0)];
a2 = [1, r0.*exp(-j.*w0)];
fvtool(b0*conv(b1,b2), conv(a1,a2))
%}
% When we change r to 0.99 from 0.5 the filter becomes more precise
% ATTENTION - Part e takes variables from part a and b so execute those
% parts first
% part e
%{ 
load handel.mat
filename = 'handel.wav'
audiowrite(filename,y,Fs);
clear y Fs
[y,Fs] = audioread('handel.wav')
%sound(y,Fs)
duration = length(y)/Fs;
ts = 1/Fs;
t = 0:ts:duration-ts;
f0 = 1024;
xn = sin(2*pi*f0*t);
xn = xn.'
yn = y + xn;
%sound(yn,Fs)
yn1=filter(bx,ax,yn);
yn2=filter(by,ay,yn);
%sound(real(yn1),Fs)
%sound(real(yn2),Fs)
%}

% part f
%{
subplot(2,2,1)
plot(y)
xlim([0 100])
ylim([-1.5 1.5])
title('x[n]')
subplot(2,2,3)
plot(real(yn1))
xlim([0 100])
ylim([-1.5 1.5])
title('Output 1')
subplot(2,2,2)
plot(yn)
xlim([0 100])
ylim([-1.5 1.5])
title('x[n] + sin(2pif0t)')
subplot(2,2,4)
plot(real(yn2))
xlim([0 100])
ylim([-1.5 1.5])
title('Output 2')
%}
