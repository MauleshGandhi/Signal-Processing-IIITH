% part a π[ẟ(ω - ω₀) + ẟ(ω + ω₀)]
% part b π[ẟ(ω - ω₀) + ẟ(ω + ω₀)]
% part c the location of impulses is symmetric about y axis i.e modulus of x coordinates of both impulses are equal.
% part d [W(ω - ω₀) + W(ω + ω₀)]/2
% part e
%{
f0 = 12;
fs = 64;
L = 16;
m = [1,2,4,8];
N = m.*L;
ts = 1/fs;
for n = 0:L-1
    x(n+1) = cos(2*pi*f0*n*ts);
end
for i = 1:2
    w = -pi : 2*pi/N(i) : pi*(N(i)-1)/N(i);
    X = fft(x,N(i));
    subplot (2,2,i)
    stem(w,abs(X));
    title(sprintf('M = %d',2^(i-1)));
end
for i = 3:4
    w = -pi : 2*pi/N(i) : pi*(N(i)-1)/N(i);
    X = fft(x,N(i));
    subplot (2,2,i)
    plot(w,abs(X));
    title(sprintf('M = %d',2^(i-1)));
end
%}%{part e: yes our plots are consistent with the answer in part d because we can observe from the plot that the power of the original signal, which was concentrated at a single frequency has been spread into the entire frequency range. This phenomenon, which is also known as 'leakage' is a characteristic of windowing a signal.%}
% part f
%{
f0 = 12;
fs = 64;
L = [16, 32, 64, 128];
ts = 1/fs;
for m = 1:4
    for n = 0:L(m)-1
        x(n+1) = cos(2*pi*f0*n*ts);
    end
    N = 8*L(m);
    w = -pi : 2*pi/N : pi*(N-1)/N;
    X = fft(x,N);
    subplot (2,2,m)
    plot(w,abs(X));
    title(sprintf('N = %d, L = %d',N,L(m)));
end
%}
%{ partf: The peaks in the spectrum shape get higher and higher and the spectral distortion decreases as we increase L. However, our ability to resolve spectral lines of different frequencies decreases as we increase L.%}
% part g
%{
f0 = 11;
fs = 64;
L = 16;
m = [1,2,4,8];
N = m.*L;
ts = 1/fs;
for n = 0:L-1
    x(n+1) = cos(2*pi*f0*n*ts);
end
for i = 1:2
    w = -pi : 2*pi/N(i) : pi*(N(i)-1)/N(i);
    X = fft(x,N(i));
    subplot (2,2,i)
    stem(w,abs(X));
    title(sprintf('M = %d',2^(i-1)));
end
for i = 3:4
    w = -pi : 2*pi/N(i) : pi*(N(i)-1)/N(i);
    X = fft(x,N(i));
    subplot (2,2,i)
    plot(w,abs(X));
    title(sprintf('M = %d',2^(i-1)));
end
%}
% part h
%{
f0 = 12;
fs = 64;
L = 16;
z = hann(L);
m = [1,2,4,8];
N = m.*L;
ts = 1/fs;
for n = 0:L-1
    x(n+1) = cos(2*pi*f0*n*ts)*z(n+1);
end
for i = 1:2
    w = -pi : 2*pi/N(i) : pi*(N(i)-1)/N(i);
    X = fft(x,N(i));
    subplot (2,2,i)
    stem(w,abs(X));
    title(sprintf('M = %d',2^(i-1)));
end
for i = 3:4
    w = -pi : 2*pi/N(i) : pi*(N(i)-1)/N(i);
    X = fft(x,N(i));
    subplot (2,2,i)
    plot(w,abs(X));
    title(sprintf('M = %d',2^(i-1)));
end
%} %{ part h: The main lobe is wider and the spectral leakage decreases as compared to part e%} 
% part i
% the physical frequency of X(k) is Fs*k/N hz where Fs is sampling
% frequency
% from looking at the graphs in parts e,g and h we see that the graphs peak
% at approximately k = -2 and k = 2. So the frequencies will be:-
%part e:
%N=16->8    N=32->4    N=64->2    N=128->1
%part g:
%N=16->8    N=32->4    N=64->2    N=128->1
%part h:
%N=16->8    N=32->4    N=64->2    N=128->1
% N is inversely proportional to our answers

% part j
%{
[y,Fs] = audioread('02.wav');
X = fft(y);
plot(abs(X));
% the dominant frequencies we get from the plot are: 497.89, 997.72 and 1,504.70
%}
