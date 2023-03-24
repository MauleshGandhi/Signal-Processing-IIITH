function xn = harmonics(A,f0,P,td,fs)
N = length(A);
F = zeros(N,1);
for k=1:N
F(k) = k.*f0;
end
xn = SineSum(A,F,P,td,fs)
end
