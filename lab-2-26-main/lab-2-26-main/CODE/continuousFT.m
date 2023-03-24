function X = continuousFT(t,xt,a,b,w)
X = int(xt.*exp(-1j.*w.*t),a,b);