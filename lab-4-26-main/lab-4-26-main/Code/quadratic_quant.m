function y = quadratic_quant(x,B,a)

L = 2.^(B-1);
size = 1./L;

for j = 1:L+1
    r(j) = size.*(j-1);
end

n = length(x);

for k = 1:n
    for l = 1:L
        if ((x(k)>=(a*(r(l).^2)))&&(x(k)<=(a*(r(l+1).^2))))
            y(k) = a*((r(l).^2) + (r(l+1).^2))/2;
        else if ((x(k)<(-a*(r(l).^2)))&&(x(k)>=(-a*(r(l+1).^2))))
            y(k) = -a*((r(l).^2) + (r(l+1).^2))/2;
            end
        end
    end
end
end
    
    