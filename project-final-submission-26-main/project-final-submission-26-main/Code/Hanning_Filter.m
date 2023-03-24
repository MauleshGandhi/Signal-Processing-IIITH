x = ecg(500);     % ecg signal 
v = randn(500,1);
for n = 1:500
g(n) = x(n) + v(n)/10;  % adding noise to ecg signal
end
% numerator coefficients of filter transfer function
b0 = 1/4;
b1 = [1,2,1];
b = b0.*b1;
% denominator coefficients of filter transfer function
a = 1;
yn = filter(b,a,g)  %smoothening of signal
yn = filter(b,a,yn)  %smoothening of signal
yn = filter(b,a,yn)  %smoothening of signal
subplot(2,1,1)
plot(g)
title('Noisy signal')
subplot(2,1,2)
plot(yn)
title('Smoothened signal')
sgtitle('Hanning Filter')
