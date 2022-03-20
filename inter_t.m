function y_i  = inter_t(fun, a, b)
% Numerical integration using the trapezoidal rule
n = 1e5;
x = linspace(a,b,n);
y = zeros(1,n);
for k = 1:n
    y(k) = fun(x(k));
end

% y(isnan(y) | isinf(y))=0;

y_sum = 2*sum(y)-y(1)-y(n);

y_i = (b-a)/n*y_sum/2;

end