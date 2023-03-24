fs = 10000

%part a
N = 5
f0 = 50;
td = 1;
A = zeros(N,1)
for k = 1:N
    A(k) = 1/k;
end
P = zeros(N,1)

y1 =  harmonics(A,f0,P,td,fs);
sound(y1,fs)

% part b
N = 5
f0 = 50;
td = 1;
A = zeros(N,1)
for k = 1:N
    A(k) = 1/(k.^2);
end
P = zeros(N,1)

y2 =  harmonics(A,f0,P,td,fs);
sound(y2,fs)

%part c
N = 10
f0 = 100;
td = 1;
A = zeros(N,1)
for k = 1:N
    A(k) = 1/k;
end
P = zeros(N,1)
y3 =  harmonics(A,f0,P,td,fs);
sound(y3,fs)
for k = 1:N
    A(k) = 1/(k.^2);
end
y4 =  harmonics(A,f0,P,td,fs);
sound(y4,fs)


% part d
                %(ak = sin(pi*k/N))
N = 5
f0 = 50;
td = 1;
A = zeros(N,1)
for k = 1:N
    A(k) = sin(pi*k/N);
end
P = zeros(N,1)
d1 =  harmonics(A,f0,P,td,fs);
%sound(d1,fs)
                %(ak = cos(pi*k/N))
N = 5
f0 = 50;
td = 1;
A = zeros(N,1)
for k = 1:N
    A(k) = cos(pi*k/N);
end
P = zeros(N,1)
d2 =  harmonics(A,f0,P,td,fs);
%sound(d2,fs)
                %(ak = k)
N = 5
f0 = 50;
td = 1;
A = zeros(N,1)
for k = 1:N
    A(k) = k;
end
P = zeros(N,1)
d3 =  harmonics(A,f0,P,td,fs);
%sound(d3,fs)


%part e

%N = 5 and f0 = 50
subplot (2,2,1)
plot(d1(1,1:500))
title('ak = sin(pi*k/N)')
subplot(2,2,2)
plot(d2(1,1:500))
title('ak = cos(pi*k/N)')
subplot (2,2,3)
plot(d3(1,1:500))
title('ak = k')
subplot (2,2,4)
plot(y1(1,1:500))
title('ak = 1/k')
