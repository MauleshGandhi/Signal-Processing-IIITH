function xn = SineSum(A,F,P,td,fs)
t = 0:1/fs:td
N = length(A);
xn = 0
for k=1:N
xn =  xn + A(k).*sin(2.*pi.*F(k).*t + P(k));
end
end
