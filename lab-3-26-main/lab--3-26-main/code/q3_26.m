t_fine = -10:0.001:10
x = 1 - abs(t_fine)
%The corresponding t_samples vector will be -1:Ts:1
% i) Ts = 0.5s
Ts = 0.5
t_sample = -1:Ts:1
for n = 0:4    
    y(n+1) = 1 - abs((n-2).*Ts) 
end
z = sinc_recon(n, Ts, y, t_fine);
subplot(2,2,1);
plot(t_fine, z);
title('Ts = 0.5s')


% ii) Ts = 0.2s
Ts = 0.2
t_sample = -1:Ts:1
for n = 0:10
    y(n+1) = 1 - abs((n-5).*Ts) 
end
z = sinc_recon(n, Ts, y, t_fine);
subplot(2,2,2);
plot(t_fine, z);
title('Ts = 0.2s')


% iii) Ts = 0.1s
Ts = 0.1
t_sample = -1:Ts:1
for n = 0:20
    y(n+1) = 1 - abs((n-10).*Ts) 
end
z = sinc_recon(n, Ts, y, t_fine);
subplot(2,2,3);
plot(t_fine, z);
title('Ts = 0.1s')


% iv) Ts = 0.05s
Ts = 0.05
t_sample = -1:Ts:1
for n = 0:40
    y(n+1) = 1 - abs((n-20).*Ts) 
end
z = sinc_recon(n, Ts, y, t_fine);
subplot(2,2,4);
plot(t_fine, z);
title('Ts = 0.05s')
% We notice that as sampling interval gets smaller, the graph becomes smoother and smoother and gets closer to original sigal.
