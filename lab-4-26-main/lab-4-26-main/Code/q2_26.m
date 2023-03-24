%part a and b: 

f0 = 10;
fs = 5000;
Ts = 0.0002;

for n = 1:5001
x(n) = sin(2*pi*f0*(n-1)*Ts);
end

a = 1;
B = 4;

t_sample = 0:Ts:1

xq = quadratic_quant(x,B,a);

subplot (3,1,1)
plot(t_sample,x); grid on;
title('Sampled Signal');

subplot(3,1,2)
plot(t_sample,xq); grid on;
title('Quantized Signal');

%part c:

subplot(3,1,3)
plot(t_sample,x-xq); grid on;
title('Quantization Error');

% part d:

figure;
subplot(1,2,1)
nbins = 15;
histogram(x-xq,nbins);
title('Histogram (B = 4)');

B = 3;
xq = quadratic_quant(x,B,a);
subplot(1,2,2)
nbins = 15;
histogram(x-xq,nbins);
title('Histogram (B = 3)');

% on comparing the histograms, we can see that as B increases, the
% quantization error decreases.

% part e:

for n = 1:8
    mae(n) = max(abs(x-quadratic_quant(x,n,a)));
end
b = 1:1:8;
figure;
plot(b,mae);
title('Maximum Absolute Quantization Error');

% on increasing  b from 1 to 8, the maximum absolute quantization error
% decreases from 0.5 to 0.007

% part f:

for n = 1:8
    xq = quadratic_quant(x,n,a);
    eq = x-xq;
    s1=0;
    s2=0;
    for m = 1:5001
        s1 = s1 + x(m)*x(m);
        s2 = s2 + eq(m)*eq(m);
    end
    sqnr(n) = s1/s2;
end

b = 1:1:8;
figure;
plot(b,sqnr);
title('SQNR');

% the ratio of signal power to quantization noise power (SQNR) increases
% exponentially with b

% part g:

% non uniform quantizer gives lesser quantization error in regions near 0 and increases
% as we move away from 0.

% However, compared to a uniform quantizer, it gives lesser quantization
% error.