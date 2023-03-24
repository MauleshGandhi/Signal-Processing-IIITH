x = ecg(500);     % signal
for n = 1:500
g(n) = x(n) + 0.8;  % signal + offset
end
% numerator coefficients
b = zeros(257,1);
b(1) = 1;
b(257) = -1;
% denominator coefficients
a = [1,-1];
yn = filter(b,a,g);   % offset is obtained from filter with 256 gain
pn = g - yn./256;     % subtraction of offset and 256 gain 
subplot(4,1,1)
plot(x)
title('original')
subplot(4,1,2)
plot(g)
title('Signal with Offset')
subplot(4,1,3)
plot(yn/256)
title('Offset')
subplot(4,1,4)
plot(pn)
title('Signal after removal of offset')
sgtitle('Elimination of Offset')
