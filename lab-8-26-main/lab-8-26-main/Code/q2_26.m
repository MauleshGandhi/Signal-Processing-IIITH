x = -1.5:0.01:1.5;
y = -1.5:0.01:1.5;
[X,Y] = meshgrid(x,y);
%p = 0.9;
p = 1 + j;
xz = (X + j.*Y)./(X + j.*Y - p)
%part a
%%{
mesh(x,y,log(abs(xz)))
%title('p = 0.9');
title('p = 1 + j')
% The pole for p = 0.9 is (0.9, 0) and the pole for p = 1 + j is (1, 1).
% The zeros for both values of p are (0, 0)
%%}

% part b
%{
p = 0.9
%p = 1 + j;
b = [1,0];
a = [1, -p];
zplane(b,a)
title('p = 0.9')
%title('p = 1 + j')
%}

% part c
%{
p = 0.9
%p = 1 + j
b = 1;
a = [1, -p];
[h,w]=freqz(b,a,1001)
subplot(2,1,1)
plot(w,abs(h));
title('Magnitude p = 0.9')
%title('Maginitude p = 1 + j')
subplot(2,1,2)
plot(w,angle(h));
title('Phase p = 0.9')
%title('Phase p = 1 + j')
%}

% part d
%{
%p = 0.9
p = 1 + j
b = 1;
a = [1, -p];
[h,t]=impz(b,a,51)
subplot(2,1,1)
plot(t,abs(h));
%title('Magnitude p = 0.9')
title('Maginitude p = 1 + j')
subplot(2,1,2)
plot(t,angle(h));
%title('Phase p = 0.9')
title('Phase p = 1 + j')
% For both values of p, X(z) has only one pole. So, there are 2 ROCs for both cases. So, there are 2 possible time-domain signals for the same X(z) in both cases (causal or anti-causal).
%}

% part e
%{
x = -1.5:0.01:1.5;
y = -1.5:0.01:1.5;
[X,Y] = meshgrid(x,y);
r = 0.95;
w0 = pi/3;
xz = ((X+j*Y).^2 - 2*cos(w0).*(X+j*Y) + 1)./((X+j*Y).^2 - 2*r*cos(w0).*(X+j*Y) + r^2)
% part e,a
%{
mesh(x,y,log(abs(xz)));
%}

% part e,b
%{
b = [1, -2*cos(w0), 1];
a = [1, -2*r*cos(w0), r^2];
zplane(b,a);
%}


% part e,c
%{
b = [1, -2*cos(w0), 1];
a = [1, -2*r*cos(w0), r^2];
[h,w]=freqz(b,a,1001)
subplot(2,1,1)
plot(w,abs(h));
title('Magnitude')
subplot(2,1,2)
plot(w,angle(h));
title('Phase')
%}

% part e,d
%{
b = [1, -2*cos(w0), 1];
a = [1, -2*r*cos(w0), r^2];
[h,t]=impz(b,a,51)
subplot(2,1,1)
plot(t,abs(h));
title('Magnitude')
subplot(2,1,2)
plot(t,angle(h));
title('Phase')
%}
%}

% part f 
% poles are r* e^(j*theta) and r*e^(-j*theta)
% Zeros are e^(j*theta) and e^(-j*theta)
