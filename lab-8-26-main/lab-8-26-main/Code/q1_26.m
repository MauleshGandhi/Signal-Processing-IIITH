clear all
p = 0.2;
[N,ROC,ROC_zero] = region_of_convergence(p)

p = [0,1,2];
[N,ROC,ROC_zero] = region_of_convergence(p)

p = 0;
[N,ROC,ROC_zero] = region_of_convergence(p)

p = [-0.5,j];
[N,ROC,ROC_zero] = region_of_convergence(p)

p = [0,0.75];
[N,ROC,ROC_zero] = region_of_convergence(p)

p = [0,j,-j];
[N,ROC,ROC_zero] = region_of_convergence(p)

p = [1,-0.75];
[N,ROC,ROC_zero] = region_of_convergence(p)

p = [1,-1,2-j,2+j];
[N,ROC,ROC_zero] = region_of_convergence(p)

p = [0.75,-0.75];
[N,ROC,ROC_zero] = region_of_convergence(p)

p = [1-j,1-2j,1-3j,2-j];
[N,ROC,ROC_zero] = region_of_convergence(p)

p = [3,3,3];
[N,ROC,ROC_zero] = region_of_convergence(p)

p = [1,-1,j,-j];
[N,ROC,ROC_zero] = region_of_convergence(p)
