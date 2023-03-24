% the corresponsing h(LPF)[n] = sin(n*pi/6)/(n*pi) and h(d)[n] =
% sin((n-nc)*pi/6)/((n-nc)*pi) where nc = N-1/2 and N is length of filters

% part a
%{
N = 51;
nc = (N-1)/2;
n = 0:1:N-1;
hn = sin((n-nc).*pi/6)./((n-nc).*pi);
hn(26) = 1/6;

% part b

hw = fft(hn,1001);
mag = abs(hw);
maxm = max(mag);
mag = mag./maxm;
magdb = 20.*log(mag)./log(10);
n2 = 0:1:1000;

subplot(3,1,1);
plot(hn);
title('h[n]');
subplot(3,1,2);
plot(2*pi.*n2./1001,magdb);
ylim([-100,10]);
title('DFT normalized magnitude in decibel scale');
subplot(3,1,3);
plot(2*pi.*n2./1001,angle(hw));
title('DFT Phase');
%}
% part c
%{
N = 51;
w = blackman(N);
w = w.';
nc = (N-1)/2;
n = 0:1:N-1;
hn = sin((n-nc).*pi/6).*w./((n-nc).*pi);
hn(26) = w(26)/6;
hw = fft(hn,1001);
mag = abs(hw);
maxm = max(mag);
mag = mag./maxm;
magdb = 20.*log(mag)./log(10);
n2 = 0:1:1000;

subplot(3,1,1);
plot(hn);
title('h[n]');
subplot(3,1,2);
plot(2*pi.*n2./1001,magdb);
ylim([-100,10]);
title('DFT normalized magnitude in decibel scale');
subplot(3,1,3);
plot(2*pi.*n2./1001,angle(hw));
title('DFT Phase');
%}

% part d
% Side lobes are bigger for the rectangular window based filter.

% part e
%{
n = 0:1:200;
%xn = cos((pi/16).*n) + 0.25.*sin((pi/2).*n);
xn = cos((pi/16).*n) + 0.25.*randn(1,201);
N = 51;
nc = (N-1)/2;
n = 0:1:N-1;
hn = sin((n-nc).*pi/6)./((n-nc).*pi);
hn(26) = 1/6;
yn = conv(xn,hn);
N = 51;
w = blackman(N);
w = w.';
nc = (N-1)/2;
n = 0:1:N-1;
hn1 = sin((n-nc).*pi/6).*w./((n-nc).*pi);
hn1(26) = w(26)/6;
yn1 = conv(xn,hn1);

subplot(3,1,1);
plot(xn);
title('Original Signal');
subplot(3,1,2);
plot(yn);
title('Filter 1');
subplot(3,1,3);
plot(yn1);
title('Filter 2');
%}
% part f 
%{
N = 51;
nc = (N-1)/2;
n = 0:1:N-1;
hn = sin((n-nc).*pi/6)./((n-nc).*pi);
hn(26) = 1/6;
h1n = ((-1).^n).*hn;

hw = fft(h1n,1001);
mag = abs(hw);
maxm = max(mag);
mag = mag./maxm;
magdb = 20.*log(mag)./log(10);
n2 = 0:1:1000;

subplot(3,1,1);
plot(h1n);
title('h1[n]');
subplot(3,1,2);
plot(2*pi.*n2./1001,magdb);
ylim([-100,10]);
title('DFT normalized magnitude in decibel scale');
subplot(3,1,3);
plot(2*pi.*n2./1001,angle(hw));
title('DFT Phase');
% The filter will be a low pass filter.
%}

