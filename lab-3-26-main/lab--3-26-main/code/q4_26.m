% 1. Nyquist rate is 2 x omega = 10 π

t_fine = -10:0.001:10
x = cos(5.*pi.*t_fine)

% i) Ts = 0.1s
Ts = 0.1
t_sample = 0:Ts:2
for n = 0:20
    y(n+1) = cos(5.*pi.*n.*Ts) 
end
z = sinc_recon(n, Ts, y, t_fine);
subplot(2,2,1);
plot(t_fine, z);


% ii) Ts = 0.2s
Ts = 0.2
t_sample = 0:Ts:2
for n = 0:10
    y(n+1) = cos(5.*pi.*n.*Ts) 
end
z = sinc_recon(n, Ts, y, t_fine);
subplot(2,2,2);
plot(t_fine, z);

% iii) Ts = 0.3s
Ts = 0.3
t_sample = 0:Ts:2
for n = 0:6
 y(n+1) = cos(5.*pi.*n.*Ts)     
end
z = sinc_recon(n, Ts, y, t_fine);
subplot(2,2,3);
plot(t_fine, z);


% iv) Ts = 0.4s
Ts = 0.4
t_sample = 0:Ts:2
for n = 0:5
    y(n+1) = cos(5.*pi.*n.*Ts)  
end
z = sinc_recon(n, Ts, y, t_fine);
subplot(2,2,4);
plot(t_fine, z);
