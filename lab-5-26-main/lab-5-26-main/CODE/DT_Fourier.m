function X = DT_Fourier(x,N0,w)
X = 0
for n = 1:length(x)
X = X + x(n).*exp(-1.*1j.*w.*(n-N0))
end
end
