t_fine = 0:0.001:2
x = cos(5.*pi.*t_fine) + sin(10.*pi.*t_fine)
Ts = 0.1
t_sample = 0:Ts:2
    y = cos(5*pi*t_sample) + sin(10*pi*t_sample)

subplot(2,2,1);
plot(t_fine, x); grid on;
hold on;
stem(t_sample,y); grid on;
hold off; title('original and sample')

y_previous = interp1(t_sample,y, t_fine, 'previous')
subplot(2,2,2);
stem(t_sample,y); grid on;
hold on;
plot(t_fine, y_previous);
hold off;title('zero hold order reconstruction')

y_next = interp1(t_sample,y, t_fine, 'linear')
subplot(2,2,3);
stem(t_sample,y); grid on;
hold on;
plot(t_fine, y_next);
hold off; title('linear interpolation')

for n = 0:20
y(n+1) = cos(5*pi*n*Ts) + sin(10*pi*n*Ts)
end
z = sinc_recon(n, Ts, y, t_fine);
subplot(2,2,4);
stem(t_sample,y); grid on;
hold on;
plot(t_fine, z);
hold off; title('sinc interpolation')

ae1 = abs(x-y_previous);
mae1 = max(ae1);
ae2 = abs(x-y_next);
mae2 = max(ae2);
ae3 = abs(x-z);
mae3 = max(ae3);

% the graph for sinc interpolation is closest to the original graph,
% followed by linear interpolation and finally zero order interpolation.

clc;
disp(mae1);
disp(mae2);
disp(mae3);