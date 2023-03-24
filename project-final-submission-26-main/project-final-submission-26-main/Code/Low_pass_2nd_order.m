x = ecg(500);       % ecg signal
v = randn(500,1);
for n = 1:500
g(n) = x(n) + v(n)/10 + sin(900*n);   % addition of high frequency noise
end
% numerator coefficients of transfer filter function
b0 = [1,0,0,0,-1];
b = conv(b0,b0);
% denominator coefficients of transfer filter function
a0 = [1,-1];
a = conv(a0,a0);
yn = filter(b,a,g)./16; % High frequency noise is filtered out 
subplot(3,1,1)
plot(x)
title('original')
subplot(3,1,2)
plot(g)
title('Noisy signal')
subplot(3,1,3)
plot(yn)
title('Filtered signal')
sgtitle('Low pass 2nd order')
