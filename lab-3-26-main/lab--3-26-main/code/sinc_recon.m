function c = sinc_recon(n, Ts, y, t_fine)
wc = pi./Ts
c = 0;
    for k = 0:n
    c = c + Ts.*y(k+1).*sinc(wc.*(t_fine-k.*Ts)./pi).*wc./pi
    end
end
