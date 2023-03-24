% part a

L = 4;
N = 4;
%N = 16;
%N = 64;
x1 = [ones(L,1); zeros(N-L,1)];
y1 = fft(x1);
figure;
subplot(3,1,1)
stem(x1);
title('sequence');
subplot(3,1,2)
stem(abs(y1));
title('magnitude');
subplot(3,1,3)
stem(angle(y1));
title('phase');
sgtitle(sprintf('N = %d',N));

% part b

w0 = 3*pi/10;
N = 20;
i = 1:1:20;
x2 = sin(w0*i);
y2 = fft(x2);
figure;
subplot(3,1,1)
stem(real(x2));
title('sequence');
subplot(3,1,2)
stem(abs(y2));
title('magnitude');
subplot(3,1,3)
stem(angle(y2));
title('phase');

% part c

w0 = 3*pi/10;
N = 20;
i = 1:1:20;
x3 = cos(w0*i);
y3 = fft(x3);
figure;
subplot(3,1,1)
stem(real(x3));
title('sequence');
subplot(3,1,2)
stem(abs(y3));
title('magnitude');
subplot(3,1,3)
stem(angle(y3));
title('phase');

% part d

w0 = 3*pi/10;
N = 20;
i = 1:1:20;
x4 = sin(w0*(i-1));
y4 = fft(x4);
figure;
subplot(3,1,1)
stem(real(x4));
title('sequence');
subplot(3,1,2)
stem(abs(y4));
title('magnitude');
subplot(3,1,3)
stem(angle(y4));
title('phase');

% part e

w0 = 3*pi/10;
N = 20;
i=1:1:20;
x5 = (0.8).^i;
y5 = fft(x5);
figure;
subplot(3,1,1)
stem(x5);
title('sequence');
subplot(3,1,2)
stem(abs(y5));
title('magnitude');
subplot(3,1,3)
stem(angle(y5));
title('phase');

% part f

w0 = 3*pi/10;
N = 20;
i=1:1:20;
x6 = (-0.8).^i;
y6 = fft(x6);
figure;
subplot(3,1,1)
stem(real(x6));
title('sequence');
subplot(3,1,2)
stem(abs(y6));
title('magnitude');
subplot(3,1,3)
stem(angle(y6));
title('phase');