A = [0.5,0.5];
P = [0,0];
fs = 10000

%part a

F = [350,440];
td = 4;
x1 =  SineSum(A,F,P,td,fs);
sound(x1,fs)

%part b

F = [480,620];
td = 0.5;
b1 =  SineSum(A,F,P,td,fs);
F = [0,0];
z1 =  SineSum(A,F,P,td,fs);
x2 = [b1,z1,b1,z1,b1,z1,b1,z1];
%sound(x2,fs)

%part c

F = [440,480];
td = 0.5;
b2 =  SineSum(A,F,P,td,fs);
F = [0,0];
z2 =  SineSum(A,F,P,td,fs);
x3 = [b2,z2,b2,z2,b2,z2,b2,z2];
% sound(x3,fs)


%part d yes the signals sound like the ring of a telephone

%part e

subplot (3,1,1)
plot(x1(1,1:500))
title('x1')
subplot(3,1,2)
plot(x2(1,1:500))
title('x2')
subplot (3,1,3)
plot(x3(1,1:500))
title('x3')
