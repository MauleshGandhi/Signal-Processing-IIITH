function y = partialfouriersum(F, T, t)
w0 = 2.*pi./T
N = (length(F)-1)./2
y = zeros(size(t));
for k = -N:N
 y = y + F(k+N+1).*exp(1j.*k.*w0.*t)
end
end