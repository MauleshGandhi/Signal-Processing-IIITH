w = -10:0.01:10
% 5.1 b)
% part 1
% x = [0,0,0,0,0,0,1,0,0,0,0,0,0]; N0 = 7
% part 2
% x = [0,0,0,1,0,0,0,0,0,0,0,0,0]; N0 = 7
% part 3
%{
x = zeros(13); N0 = 7
for n = 1:13
    if (4<=n) && (n<=10)
        x(n) = 1
    end
%}
% part 4
%{
x = zeros(401);
for n = 1:401
   x(n) = sin(pi.*(n-201)/4);
end
N0 = 201;
%}

%{
X = DT_Fourier(x,N0,w);
subplot(2,2,1)
plot(w, abs(X));
title('Magnitude')
subplot(2,2,2)
plot(w, angle(X));
title('Phase')
subplot(2,2,3)
plot(w, real(X));
title('Real')
subplot(2,2,4)
plot(w, imag(X));
title('Imaginary')
%}
% 5.1 c)
%{
% a = 0.01
% a = 0.5
% a = 0.99
x = zeros(101)
x2 = zeros(101)
for n = 1:101
    x(n) = a.^(n-1)
end
for n = 1:101
    x2(n) = (-a).^(n-1)
end
N0 = 1
X = DT_Fourier(x,N0,w);
X2 = DT_Fourier(x2,N0,w);
N = 1:1:100
subplot(2,2,1)
plot(x);
title('Time domain, a = b')
subplot(2,2,2)
plot(x2);
title('Time domain, a= - b')
subplot(2,2,3)
plot(w,abs(X));
title('DTFT magnitude, a = b')
subplot(2,2,4)
plot(w,abs(X2));
title('DTFT magnitude, a = - b')
%}

