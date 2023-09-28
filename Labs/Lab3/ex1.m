alpha = input('give alpha:');
beta = input('give beta:');
distType = input('Choose distribution (N,T,X,F): ', 's');
switch distType
    case 'N'
        % a)
        fprintf('a)\n');
        m = input('miu:');
        s = input('sigma:');
        prob1 = cdf('norm', 0, m, s);
        fprintf('P(X<=0) is: %f\n', prob1)
        prob2 = 1 - prob1;
        fprintf('P(X>=0) is: %f\n', prob2)
        
        % b)
        % P(a<=X<=b) = Fx(b) - Fx(a)
        % P(x<=a or x>=b) = 1 - P(a<=X<=b)
        fprintf('b)\n')
        prob1B = cdf('norm', 1, m, s) - cdf('norm', -1, m, s);
        fprintf('P(-1<=X<=1): %f\n', prob1B)
        prob2B = 1 - prob1B;
        fprintf('P(X<=-1 or X>=1): %f\n', prob2B)
        
        %c
        %P(X<xa) = a => xa = F^(-1)x(a) => icdf()
        fprintf('c)\n')
        xa = icdf('norm',alpha, m, s);
        fprintf('Qunatile of order alpha: %f\n', xa)
        
        %d
        %P(X>xb) = b => xb = F^(-1)x(1-b)
        fprintf('d)\n')
        xb = icdf('norm', 1-beta, m, s);
        fprintf('quantile of order 1-beta: %f\n', xb)
       
    case 'T'
        % a)
        fprintf('a)\n');
        n = input('n:');
        prob1 = cdf('t', 0, n);
        fprintf('P(X<=0) is: %f\n', prob1)
        prob2 = 1 - prob1;
        fprintf('P(X>=0) is: %f\n', prob2)
        
        % b)
        % P(a<=X<=b) = Fx(b) - Fx(a)
        % P(x<=a or x>=b) = 1 - P(a<=X<=b)
        fprintf('b)\n')
        prob1B = cdf('t', 1, n) - cdf('t', -1, n);
        fprintf('P(-1<=X<=1): %f\n', prob1B)
        prob2B = 1 - prob1B;
        fprintf('P(X<=-1 or X>=1): %f\n', prob2B)
        
        %c
        %P(X<xa) = a => xa = F^(-1)x(a) => icdf()
        fprintf('c)\n')
        xa = icdf('t',alpha, n);
        fprintf('Qunatile of order alpha: %f\n', xa)
        
        %d
        %P(X>xb) = b => xb = F^(-1)x(1-b)
        fprintf('d)\n')
        xb = icdf('t', 1-beta, n);
        fprintf('quantile of order 1-beta: %f\n', xb)
        
        
    case 'X'
        % a)
        fprintf('a)\n');
        n = input('n:');
        prob1 = cdf('chi2', 0, n);
        fprintf('P(X<=0) is: %f\n', prob1)
        prob2 = 1 - prob1;
        fprintf('P(X>=0) is: %f\n', prob2)
        
        % b)
        % P(a<=X<=b) = Fx(b) - Fx(a)
        % P(x<=a or x>=b) = 1 - P(a<=X<=b)
        fprintf('b)\n')
        prob1B = cdf('chi2', 1, n) - cdf('chi2', -1, n);
        fprintf('P(-1<=X<=1): %f\n', prob1B)
        prob2B = 1 - prob1B;
        fprintf('P(X<=-1 or X>=1): %f\n', prob2B)
        
        %c
        %P(X<xa) = a => xa = F^(-1)x(a) => icdf()
        fprintf('c)\n')
        xa = icdf('chi2',alpha, n);
        fprintf('Qunatile of order alpha: %f\n', xa)
        
        %d
        %P(X>xb) = b => xb = F^(-1)x(1-b)
        fprintf('d)\n')
        xb = icdf('chi2', 1-beta, n);
        fprintf('quantile of order 1-beta: %f\n', xb)
        
    case 'F'
        % a)
        fprintf('a)\n');
        n = input('n:');
        m = input('m:');
        prob1 = cdf('f', 0, n, m);
        fprintf('P(X<=0) is: %f\n', prob1)
        prob2 = 1 - prob1;
        fprintf('P(X>=0) is: %f\n', prob2)
        
        % b)
        % P(a<=X<=b) = Fx(b) - Fx(a)
        % P(x<=a or x>=b) = 1 - P(a<=X<=b)
        fprintf('b)\n')
        prob1B = cdf('f', 1, n, m) - cdf('f', -1, n, m);
        fprintf('P(-1<=X<=1): %f\n', prob1B)
        prob2B = 1 - prob1B;
        fprintf('P(X<=-1 or X>=1): %f\n', prob2B)
        
        %c
        %P(X<xa) = a => xa = F^(-1)x(a) => icdf()
        fprintf('c)\n')
        xa = icdf('f',alpha, n, m);
        fprintf('Qunatile of order alpha: %f\n', xa)
        
        %d
        %P(X>xb) = b => xb = F^(-1)x(1-b)
        fprintf('d)\n')
        xb = icdf('f', 1-beta, n, m);
        fprintf('quantile of order 1-beta: %f\n', xb)
end