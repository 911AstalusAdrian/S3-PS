clear all
clc

A = [1001.7, 975.0, 978.3, 988.3, 978.7, 988.9, 1000.3, 979.2, 968.9, 983.5, 999.2, 985.6];
x=A(:);

%a) Find a 95% confidence interval for the average velocity of shells of
%this type

fprintf('a)\n')
fprintf('\tA 95 percent confidence level -> 5 percent significance level, alpha = 0.05\n')
alpha = 0.05;
mx = mean(x);
fprintf('\tThe mean of the population: %f\n', mx)
fprintf('\tThe variance is unknown, so we use the invese of the Student (T) distribution\n')

n = length(x);
t = icdf('t', 1-alpha/2, n-1);
s = std(x);

li = mx-s/sqrt(n)*t;
ri = mx+s/sqrt(n)*t;
fprintf('\tThe confidence interval for the average velocity is:\n')
fprintf('\t\t(%.4f,%.4f)\n',li,ri)




%b) At the 1% significance level, does the data suggest that, on avg, the
%muzzles are faster than 995 m/s?
fprintf('b)\n')
fprintf('\t1 percent significance level => alpha = 0.01\n')
alpha = 0.01;
fprintf('\tH0: mean = 995 m/s\n')
fprintf('\tH1: mean > 995 m/s (we have a right-tailed test)\n')
fprintf('\tWe have the population mean, but the variance(sigma) is unknown\n')
fprintf('\tWe use a T-test\n')
m0 = 995;
[h, p, ci, zstat] = ttest(x, m0, 'Alpha', alpha, 'Tail', 'right');

l = icdf('t',1-alpha,n-1);
r = Inf;
fprintf('\tThe rejection region RR is (%f, %f)\n', l, r)

if h==1
    fprintf('\t\tThe null hypothesis is rejected\n')
else
    fprintf('\t\tThe null hypothesis is not rejected\n')
end







