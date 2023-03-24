t_fine = 0:0.001:2
x = cos(5.*pi.*t_fine) + sin(10.*pi.*t_fine)
subplot(2,1,1);
plot(t_fine, x);
title('Original signal');
hold on;
Ts = 0.1
t_sample = 0:Ts:2
y = cos(5.*pi.*t_sample) + sin(10.*pi.*t_sample)
subplot(2,1,2);
stem(t_sample, y); grid on;
title('sampled signal')
