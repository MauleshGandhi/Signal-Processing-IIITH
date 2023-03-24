x = ecg(500);         % ecg signal
v = randn(500,1);
for n = 1:500
g(n) = x(n) + v(n)/10 + sin(900*n);   % addition of high frequency noise to ecg signal
end
% numerator coefficients of filter transfer function
b = [1,0,0,0,-1];
% denominator coefficients of filter transfer function
a = [1,-1];
yn = filter(b,a,g)./4;
subplot(3,1,1)
plot(x)
title('original')
subplot(3,1,2)
plot(g)
title('Noisy signal')
subplot(3,1,3)
plot(yn)
title('Filtered signal')
sgtitle('Low pass 1st order')
