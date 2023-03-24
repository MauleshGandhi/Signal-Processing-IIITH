%{ 
To calculate h[n], replace x[n] with unit impulse function(delta) and
the output y[n] will be h[n]. Thus, h[n] will be equal to 1/M between n = 0
and n = M-1 and 0 everywhere else.
%}
% part c
%{
s = zeros(1001,1);
x = zeros(1001,1);
v = randn(1001,1);
for n = 1:1001
s(n) = 5.*sin(pi.*(n-1)./200); 
x(n) = s(n) + v(n);
end
subplot(2,2,1)
plot(s,'b')
hold on;
title('s[n] and x[n]')
plot(x,'r')
legend('s[n]', 'x[n]');
hold off;

% part d

 M = 5
h = zeros(M,1);
y = zeros(1001,1);
for n = 1:M
    h(n) = 1./M;
end
y = conv(x,h,"full");
subplot(2,2,2)
plot(s,'b')
hold on;
title('s[n] and y[n] for M = 5')
plot(y,'r')
legend('s[n]', 'y[n]');
hold off;

 M = 21
h = zeros(M,1);
y = zeros(1001,1);
for n = 1:M
    h(n) = 1./M;
end
y = conv(x,h,"full");
subplot(2,2,3)
plot(s,'b')
hold on;
title('s[n] and y[n] for M = 21')
plot(y,'r')
legend('s[n]', 'y[n]');
hold off;

 M = 51
h = zeros(M,1);
y = zeros(1001,1);
for n = 1:M
    h(n) = 1./M;
end
y = conv(x,h,"full");
subplot(2,2,4)
plot(s,'b')
hold on;
title('s[n] and y[n] for M = 51')
plot(y,'r')
legend('s[n]', 'y[n]');
hold off;
%}

% part e
%{
We notice the random noise disturbance decreases which causes thequality or
 sharpness of the graph to increase.The trade off is that the accuracy
 decreases or there is more deviation from the original input.
%}
 
% part f
%{
M = 5
%M = 21
%M = 51
w = -10:0.01:10
s = zeros(1001,1);
x = zeros(1001,1);
v = randn(1001,1);
h = zeros(M,1);
y = zeros(1001,1);
for n = 1:M
    h(n) = 1./M;
end
for n = 1:1001
s(n) = 5.*sin(pi.*(n-1)./200); 
x(n) = s(n) + v(n);
end
y = conv(x,h,"full");
X = DT_Fourier(x,1,w);
Y = DT_Fourier(y,1,w);
subplot(2,2,1)
plot(real(x))
title('Noisy')
subplot(2,2,2)
plot(real(y))
title('Filtered')
subplot(2,2,3)
plot(abs(real(X)))
title('DTFT Of Noisy')
subplot(2,2,4)
plot(abs(real(Y)))
title('DTFT of Filtered')
%}

% part g

    % part a
    % h[n] will be equal to 1 for n = 0 and -1 for n = 1
    
    % part c
%{
s = zeros(1001,1);
x = zeros(1001,1);
v = randn(1001,1);
for n = 1:1001
s(n) = 5.*sin(pi.*(n-1)./200); 
x(n) = s(n) + v(n);
end
subplot(2,1,1)
plot(s,'b')
hold on;
title('s[n] and x[n]')
plot(x,'r')
legend('s[n]', 'x[n]');
hold off;
    % part d
y = zeros(1001,1);
h = [1,-1];
y = conv(x,h,"full");
subplot(2,1,2)
plot(s,'b')
hold on;
title('s[n] and y[n]')
plot(y,'r')
legend('s[n]', 'y[n]');
hold off;
%}
    
    % part f
%{
w = -10:0.01:10
s = zeros(1001,1);
x = zeros(1001,1);
v = randn(1001,1);
h = [1,-1];
y = zeros(1001,1);
for n = 1:1001
s(n) = 5.*sin(pi.*(n-1)./200); 
x(n) = s(n) + v(n);
end
y = conv(x,h,"full");
X = DT_Fourier(x,1,w);
Y = DT_Fourier(y,1,w);
subplot(2,2,1)
plot(real(x))
title('Noisy')
subplot(2,2,2)
plot(real(y))
title('Filtered')
subplot(2,2,3)
plot(abs(real(X)))
title('DTFT Of Noisy')
subplot(2,2,4)
plot(abs(real(Y)))
title('DTFT of Filtered')
%}
    
% part h
% moving average filter is a low-pass filter and the simple digital differentiator filter
% is a high pass filter.
