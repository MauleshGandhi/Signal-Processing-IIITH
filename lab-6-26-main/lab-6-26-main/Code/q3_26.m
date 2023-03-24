fs = 10000
N = 5
f0 = 50;
A = zeros(N,1)
for k = 1:N
    A(k) = 1/k;
end
P = zeros(N,1);
td = 1;
y =  harmonics(A,f0,P,td,fs);
[t_env,env] = envelope(0.2,0.2,0.7,0.4,0.2,fs)
soundsc(y,fs); 
soundsc(y.*env,fs);
subplot(3,1,1);
plot(y(1,1:10000));
title('xn')
subplot(3,1,2)
plot(env(1,1:10000))
title('env')
subplot(3,1,3)
plot(y(1,1:10000).*env(1,1:10000))
title('y.*env')
