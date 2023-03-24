function [N,ROC,ROC_zero] = region_of_convergence(p)
ROC_zero = 1;
p = abs(p);
p = sort(p);
p = unique(p);
if p(1) == 0
    ROC_zero = 0;
end
N = length(p) + ROC_zero;
ROC = zeros(N,2);
for i = 1:N
    if i~=1
   ROC(i,1) = p(i-ROC_zero);
    end
   if i~=N
   ROC(i,2) = p(i+1-ROC_zero);
   end
end
 ROC(N,2) = inf;
 ROC(1,1) = 0;

end
