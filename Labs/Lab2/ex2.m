clear all
clc

%2. Plot the graphs of the pdf and the cdf of a random variable X 
%   having a binomial distr of parameters n and p given by the user.
p = input("Probability:");
n = input("Trials:");
v = 0:1:n;
y = binopdf(v,n,p);
subplot(4,1,1)
plot(v,y)

w = 0:0.01:n;
z = binocdf(w,n,p);
subplot(4,1,2)
plot(w,z)