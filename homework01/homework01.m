% 1.
x = [3 2 6 8]'
y = [4 1 3 5]'

% a) Add the sum of the elements in $x$ to $y$.
sum(x) + y

% b) Raise each element of $x$ to the power specified by the
% corresponding element in $y$.
y .^ x

% c) Divide each element of $y$ by the corresponding element in $x$.
y ./ x

% d) Multiply each element in $x$ by the corresponding element in $y$,
% calling the result $z$.
z = x .* y

% e) Add up the elements in $z$ and assign the result to a variable
% called $w$.
w = sum(z)

% f) Compute x'*y - w and interpret the result.  Answer: This is the
% scalar product of $x$ and $y$ minus the sum of the components in the
% component-wise product of $x$ and $y$.
x'*y - w

% 2. In each of the following cases, create a vector $x$ of length 20
% with the elements
% a) 2, 4, 6, 8, ...
x = [];
for n = 1:20
  x = [x n*2];
end
x

% b) 10, 8, 6, 4, 2, 0, -2, -4, ...
x = [];
for n = 1:20
  x = [x 12-n*2];
end
x

% c) 1, 1/2, 1/3, 1/4, 1/5, ...
x = [];
for n = 1:20
  x = [x 1/n];
end
x

% d) 0, 1/2, 2/3, 3/4, 4/5, ...
x = [];
for n = 1:20
  x = [x (n-1)/n];
end
x

% 3.
% a) Plot functions $y = x$ and $y = x^2$ over the interval $-3 < x <
% 3$ and put them in a single figure. Use different line styles and
% marker types to distinguish them and include legends.
x = linspace(-3, 3, 20);
y1 = arrayfun(inline('x', 'x'), x);
y2 = arrayfun(inline('x^2', 'x'), x);
plot(x, y1, '-o;y=x;', x, y2, '--s;y=x^2;')


