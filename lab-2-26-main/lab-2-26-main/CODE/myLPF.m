function B = myLPF(A,w0_FS,wc)
N = (length(A)-1)./2
for k = -N:N
 if k >= wc./w0_FS
     B(k+N+1) = 0;
 else
     B(k+N+1) = A(k+N+1);
 end
end
end