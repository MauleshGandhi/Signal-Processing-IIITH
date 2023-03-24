x = ecg(500);   % ecg signal
l = length(x);
y = zeros(l/2, 1);  % y is an array of half the size of x
y(1) = x(1);
j = 2;
% data reduction algorithm
for k = 1:((l/2)-1)
    if ((x(j)-y(k))*(x(j+1)-x(j))< 0) 
        y(k+1) = x(j);
        j=j+2;
    elseif ((x(j)-y(k))*(x(j+1)-x(j))> 0)
        y(k+1)=x(j+1);
        j=j+2;
    elseif ((x(j)-y(k))*(x(j+1)-x(j))== 0)
        y(k+1)= x(j+1);
        j = j+2;
    end
end
subplot(2,1,1);
plot(x)
title('Original Signal')
subplot(2,1,2);
plot(y)
title('Data-reduced signal')
sgtitle('Turning point data reduction')
