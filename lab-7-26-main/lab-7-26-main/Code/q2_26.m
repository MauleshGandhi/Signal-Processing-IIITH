clear all;
clc;
% part a
x1 = randn(1,10);
x2 = [0,0,0,1,0,0,0,0,0,0];
% part b
y1 = cconv(x1,x2,10);   %y1 is directly calculated circular convolution
y2 = conv(x1,x2);       %y2 is directly calculated linear convolution
% part c
a1 = fft(x1);
a2 = fft(x2);
b1 = a1.*a2;
z1 = ifft(b1);      %z1 is the output of circular convolution using dft
N1 = length(x1);
N2 = length(x2);
N = N1 + N2 - 1;
for i = N1+1:N
    x1(i) = 0;
end
for i = N2+1:N
    x2(i) = 0;
end
c1 = fft(x1);
c2 = fft(x2);
d1 = c1.*c2;
z2 = ifft(d1);      %z2 is the output of linear convolution using dft
% part d
subplot(2,2,1)
plot(y1);
title('circular convolution');
subplot(2,2,2)
plot(y2);
title('linear convolution');
subplot(2,2,3)
plot(z1);
title('circular convolution using dft');
subplot(2,2,4)
plot(z2);
title('linear convolution using dft');
