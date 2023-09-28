x = 0:0.1:3;
subplot(4,1,1)
plot(x, x.*sin(x), 'r*', x, x.^5/100, 'b*', x, cos(x), 'g*')
xlabel("x -> ")
ylabel("y -> ")
legend("x*sin", "x^5/100", "cos")
title("Hello there")
subplot(4,1,2)
fplot("[x*sin(x)]", [0,3], '->')
subplot(4,1,3)
fplot("[x^5/100]", [0,3], '->')
subplot(4,1,4)
fplot(@(x) cos(x), [0,3], '->')
% works as well with "[cos(x)"...
