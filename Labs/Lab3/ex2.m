% Normal - moderate values of p ( between 0.05 and 0.95), and large values
% of n
% bino(n,p) ~ norm(u,s), where
%   u = n*p
%   s = sqrt( np*(1-p) )

n = 80
p = 0.35
k = 0:1:n

bP = binopdf(k,n,p);
fprintf('Binopdf:\n')
%plot(k, bP)

u = n*p
s = sqrt(n*p*(1-p))
nP = pdf('norm',k,u,s)
fprintf('Normal:')
%plot(k,nP)

figure(1)
hold on
box on
plot(k,bP,'bo')
plot(k,nP,'r*')


% n >= 30 and p <= 0.05
% bino(n,p) ~ poisson(lambda = n*p)
n = 60
p = 0.015
lambda = n*p

bP1 = pdf('bino', k, n, p)
fprintf('Binomial\n')

bPS = pdf('poiss', k, lambda)
fprintf('Lambda\n')

figure(2)
hold on
box on
plot(k, bP1, 'ro')
plot(k, bPS, 'b*')
