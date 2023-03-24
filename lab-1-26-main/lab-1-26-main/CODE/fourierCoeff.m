function F = fourierCoeff(t,xt,T,t1,t2,N)
% function to find FS coefficients
% initialize
w0 = 2 .*pi ./T
F = zeros(2*N+1,1);
% for-loop to find coefficents
for nn = 1:2*N+1
F(nn) = int(xt.*exp(-1i.*(nn-(N+1)).*w0.*t),t,t1,t2)./T;
end
end