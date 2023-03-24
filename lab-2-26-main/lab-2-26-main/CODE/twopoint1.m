%part-b
clc
% define relevant parameters
T = 2
a = -T
b = T
w = -5:0.1:5

% define relevant expressions
syms t;
xt = 1

X = continuousFT(t,xt,a,b,w)

%plotting
subplot(2,2,1);
plot(w,real(X));grid on;
title('Real(X)')
subplot(2,2,2);
plot(w,imag(X));grid on;
title('Imaginary(X)')
subplot(2,2,3);
plot(w,abs(X));grid on;
title('Absolute(X)')
subplot(2,2,4);
plot(w,angle(X));grid on;
title('Phase(X)')

%Explanations: Since the xt is a rectangular pulse, it's transform will be
%the sinc function which is observed in the plot.

%part-c T=1
clc
% define relevant parameters
T = 1
a = -T
b = T
w = -5:0.1:5

% define relevant expressions
syms t;
xt = 1

X = continuousFT(t,xt,a,b,w)

%plotting
subplot(2,2,1);
plot(w,real(X));grid on;
title('Real(X)')
subplot(2,2,2);
plot(w,imag(X));grid on;
title('Imaginary(X)')
subplot(2,2,3);
plot(w,abs(X));grid on;
title('Absolute(X)')
subplot(2,2,4);
plot(w,angle(X));grid on;
title('Phase(X)')

%part-c T=4
clc
% define relevant parameters
T = 4
a = -T
b = T
w = -5:0.1:5

% define relevant expressions
syms t;
xt = 1

X = continuousFT(t,xt,a,b,w)

%plotting
subplot(2,2,1);
plot(w,real(X));grid on;
title('Real(X)')
subplot(2,2,2);
plot(w,imag(X));grid on;
title('Imaginary(X)')
subplot(2,2,3);
plot(w,abs(X));grid on;
title('Absolute(X)')
subplot(2,2,4);
plot(w,angle(X));grid on;
title('Phase(X)')

%Explanations: There was a magnitude change when we changed T.This property is called time scaling.


%part-d x(t) = e^jt
clc
% define relevant parameters
T = pi
a = -T
b = T
w = -5:0.1:5

% define relevant expressions
syms t;
xt = exp(j.*t)

X = continuousFT(t,xt,a,b,w)

%plotting
subplot(2,2,1);
plot(w,real(X));grid on;
title('Real(X)')
subplot(2,2,2);
plot(w,imag(X));grid on;
title('Imaginary(X)')
subplot(2,2,3);
plot(w,abs(X));grid on;
title('Absolute(X)')
subplot(2,2,4);
plot(w,angle(X));grid on;
title('Phase(X)')

%part-d x(t) = cos(t)
clc
% define relevant parameters
T = pi
a = -T
b = T
w = -5:0.1:5

% define relevant expressions
syms t;
xt = cos(t)

X = continuousFT(t,xt,a,b,w)

%plotting
subplot(2,2,1);
plot(w,real(X));grid on;
title('Real(X)')
subplot(2,2,2);
plot(w,imag(X));grid on;
title('Imaginary(X)')
subplot(2,2,3);
plot(w,abs(X));grid on;
title('Absolute(X)')
subplot(2,2,4);
plot(w,angle(X));grid on;
title('Phase(X)')

%Explanations: The expected FT's are 2 impulses for xt=cos(t) and 1 displaced impulse for xt=e^(jt). We observe similar but not exact shapes as we are integrating over a limited interval. 

%part-e 
clc
% define relevant parameters
T = 2
a = -1
b = 1
w = -5:0.1:5

% define relevant expressions
syms t;
xt = 1 - abs(x)

X = continuousFT(t,xt,a,b,w)

%plotting
subplot(2,2,1);
plot(w,real(X));grid on;
title('Real(X)')
subplot(2,2,2);
plot(w,imag(X));grid on;
title('Imaginary(X)')
subplot(2,2,3);
plot(w,abs(X));grid on;
title('Absolute(X)')
subplot(2,2,4);
plot(w,angle(X));grid on;
title('Phase(X)')

%Explanations: For this case, xt can be expressed as the convolution of two
%rectangular pulses. The expected FT is the square of the sinc function.