g = ecg(500);          
% numerator coefficients
b0 = zeros(13,1);         
b0(1) = 1;
b0(13) = -1;
b = conv(b0,b0);
% denomintor coefficients
a0 = [1,-1,1];
a = conv(a0,a0);
yn = filter(b,a,g);
subplot(2,1,1)
plot(g)
title('original')
subplot(2,1,2)
plot(yn)
title('QRS region')
sgtitle('Band Pass filter for QRS detection')
