  % define relevant parameters
T = 1;             
N = 5;            
t1 = -T ./2;       
t2 = T ./2;        
% define relevant expressions
syms t;
xt = 2.*cos(2.*t.*pi) + cos(6.*pi.*t);   % sum of cosines wave
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
% Initializing 
time_grid = -0.5:0.01:0.5;
y = partialfouriersum(F, T, time_grid)

% plotting
figure; 
z = 2.*cos(2.*time_grid.*pi) + cos(6.*pi.*time_grid);   %part b
plot(time_grid,real(y),'-b');                          %part a&b
hold on;
plot(time_grid,real(z),'-r');                          %part b
grid on;        
hold off;                                   
%part c:
ae = abs(z-y);
mae = max(ae);
rmse = rms(ae);
clc;
disp(mae);
disp(rmse);

