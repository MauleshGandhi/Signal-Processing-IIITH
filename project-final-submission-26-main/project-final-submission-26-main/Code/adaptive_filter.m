% Adaptive filter

p = 500;        % No of samples
x1 = ecg(p);    % ECG signal
x1 = x1.';      
x = zeros(p,1); % ECG signal plus added noise(in next line)

for m = 1:p
x(m) = x1(m) + 0.1*sin(2*pi*60*(m-1)/500) + 0.5;  %adding of noise of 60 Hz
end

fs = 500;          % sampling frequency fs
ts = 1/fs;         % time sample
A = 0.02;          % assuming sinusodial noise of constant amplitude A
f0 = 60;           % frequency we want to eliminate
w = 2*pi*f0;       % angular frequency of noise
d = 0.002;         % increment value

e = zeros(p,1);     % estimate of noise
f = zeros(p,1);     % comparison function
e(2) = A*sin(w*2*ts);
e(1) = A*sin(w*1*ts - w*ts);
N = cos(w*ts);
for n = 2:length(x)-1
e(n+1) = 2*N.*e(n) - e(n-1);
f(n + 1) = (x(n + 1) - e(n + 1)) - (x(n) - e(n));
if f(n + 1)>0
    e(n+1) = e(n+1) + d;
end
if f(n+1)<0
    e(n+1) = e(n+1) - d;
end
end
y = zeros(p,1);     % Output/Filtered Signal
for m = 1:p
y(m) = x(m) - e(m);
end

% we implement elimination of dc offset using high-pass filter

% numerator coefficients
b = zeros(257,1);
b(1) = 1;
b(257) = -1;
% denominator coefficients
a = [1,-1];
yn = filter(b,a,y);   % offset is obtained from filter with 256 gain
pn = y - yn./256;     % subtraction of offset from original signal 

subplot(4,1,1)
plot(x1)
title('ECG Signal')
subplot(4,1,2)
plot(x)
title('Signal + 60Hz noise + dc offset')
subplot(4,1,3)
plot(e)
title('estimated noise')
subplot(4,1,4)
plot(pn)
title('Filtered Signal')
sgtitle('Adaptive Filter')
