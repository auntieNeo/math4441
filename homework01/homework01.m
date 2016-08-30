%% Homework 1, Basic MATLAB (I), Jonathan Glines


%% Exercise 1
% Let $x = \left[\matrix{3 & 2 & 6 & 8}\right]^\mathrm{T}$ and
% $y = \left[\matrix{4 & 1 & 3 & 5}\right]^\mathrm{T}$ , (namely, $x$ and $y$
% are column vectors).
x = [3 2 6 8]'
y = [4 1 3 5]'

%% Exercise 1 Part a
% Add the sum of the elements in $x$ to $y$.
sum(x) + y

%% Exercise 1 Part b
% Raise each element of $x$ to the power specified by the
% corresponding element in $y$.
y .^ x

%% Exercise 1 Part c
% Divide each element of $y$ by the corresponding element in $x$.
y ./ x

%% Exercise 1 Part d
% Multiply each element in $x$ by the corresponding element in $y$,
% calling the result $z$.
z = x .* y

%% Exercise 1 Part e
% Add up the elements in $z$ and assign the result to a variable
% called $w$.
w = sum(z)

%% Exercise 1 Part f
% Compute x'*y - w and interpret the result.  Answer: This is the
% scalar product of $x$ and $y$ minus the sum of the components in the
% component-wise product of $x$ and $y$.
x'*y - w

%% Exercise 2
% In each of the following cases, create a vector $x$ of length 20
% with the given elements.

%% Exercise 2 Part a
% $2, 4, 6, 8, \ldots$
x = [];
for n = 1:20
  x = [x n*2];
end
x

%% Exercise 2 Part b
% $10, 8, 6, 4, 2, 0, -2, -4, \ldots$
x = [];
for n = 1:20
  x = [x 12-n*2];
end
x

%% Exercise 2 Part c
% $1, 1/2, 1/3, 1/4, 1/5, \ldots$
x = [];
for n = 1:20
  x = [x 1/n];
end
x

%% Exercise 2 Part d
% $0, 1/2, 2/3, 3/4, 4/5, \ldots$
x = [];
for n = 1:20
  x = [x (n-1)/n];
end
x

%% Exercise 3
%% Exercise 3 Part a
% Plot functions $y = x$ and $y = x^2$ over the interval $-3 < x <
% 3$ and put them in a single figure. Use different line styles and
% marker types to distinguish them and include legends.
x = linspace(-3, 3, 20);
y1 = arrayfun(@(x) x, x);
y2 = arrayfun(@(x) x^2, x);
plot(x, y1, '-or', x, y2, '--sg'); legend('x', 'x^2')

%% Exercise 3 Part b
% Plot the surface of the function $z = 2 \sin x \cos y$ over $0 < x < \pi$ and
% $0 < y < \pi$.
[x, y] = meshgrid(linspace(0,pi,20));
z = arrayfun(@(x, y) 2*sin(x)*cos(y), x, y);
surf(x,y,z)

%% Exercise 4
% Given the array
% $A = \left[\matrix{
%   2 & 4 & 1 \cr
%   6 & 7 & 2 \cr
%   3 & 5 & 9 \cr
% }\right]$
% provide and run the commands needed to do the following.
A = [2 4 1;...
     6 7 2;...
     3 5 9];

%% Exercise 4 Part a
% Assign the first row of $A$ to a vector called $x$.
x = A(1,:)

%% Exercise 4 Part b
% Assign the last 2 rows of $A$ to an array called $y$.
y = A(end-1:end,:)

%% Exercise 4 Part c
% Compute the sum over the columns of $A$.
sum(A,2)

%% Exercise 4 Part d
% Compute the sum over the rows of $A$.
sum(A,1)

%% Exercise 4 Part e
% Compute the standard error of the mean of each column of $A$. (NOTE: The
% standard error of the mean is defined as the standard deviation divided
% by the square root of the number of elements used to compute the mean.)
[n,m] = size(A);
for a = 1:m
  col = A(:,a);
  sqrt(sum((col-mean(col)).^2)/(n - 1))/sqrt(n)
end

%% Exercise 5
% Given the array
% $A =
% \left[\matrix{2 & 7 & 9 & 7 \cr
%                3 & 1 & 5 & 6 \cr
%                8 & 1 & 2 & 5}\right]$,
% calculate and explain the results of the following commands.
A = [2 7 9 7;...
     3 1 5 6;...
     8 1 2 5];

%% Exercise 5 Part a
% This is the transpose of $A$.
A'

%% Exercise 5 Part b
% This is a matrix consisting of columns 1 and 4 of $A$.
A(:,[1 4])

%% Exercise 5 Part c
% This is a matrix consisting of colums 3 and 1 from rows 2 and 3 of $A$, the
% result of which is a 2x2 matrix. Notice that the order of the columns is
% reversed.
A([2 3], [3 1])

%% Exercise 5 Part d
% This changes the matrix from a 3x4 array to a 2x6 array.
reshape(A,2,6)

%% Exercise 5 Part e
% This creates a column vector with all of the entries of $A$.
A(:)

%% Exercise 5 Part f
% This is a matrix consisting of the rows of $A$ in reverse.
flipud(A)

%% Exercise 5 Part g
% This is a matrix consisting of the columns of $A$ in reverse.
fliplr(A)

%% Exercise 5 Part h
% This is the matrix $A$ with the last row duplicated.
[A; A(end,:)]

%% Exercise 5 Part i
% This is a matrix consisting of rows 1 through 3 of $A$. This happens to be
% equal to $A$ itself.
A(1:3,:)

%% Exercise 5 Part j
% This is the matrix $A$ with the first two rows appended to the end of the
% matrix.
[A; A(1:2,:)]

%% Exercise 5 Part k
% This is a row vector containing the sum of the elements in the respective
% columns of $A$.
sum(A)

%% Exercise 5 Part l
% This is a row vector containing the sum of the elements in the respective
% rows of $A$.
sum(A')

%% Exercise 5 Part m
% This is a column vector containing the sum of the elements in the respective
% rows of $A$.
sum(A,2)

%% Exercise 5 Part n
% This is a matrix where the top left portion of the matrix is made up of the
% matrix $A$. The entries below the entries of matrix $A$ are the sums of each
% respective column. The entries to the right of the entries of matrix $A$ ar
% ethe sums of each respective row. The bottom-right entry is the sum of all
% entries in $A$.
[[A ; sum(A)] [sum(A,2); sum(A(:))]]

%% Exercise 5 Part o
% A column vector consisting of the entries on the diagonal of $A$.
diag(A)

%% Exercise 5 Part p
% This matrix is the lower triangular part of $A$.
tril(A)

%% Exercise 6
% Given $x = \left[\matrix{3 & 15 & 9 & 12 & -1 & 0 & -12 & 9 & 6 & 1}\right]$, provide the
% command(s) that will do the following.

%% Exercise 5 Part a
%Set the values of $x$ that are positive to zero.
x = [3 15 9 12 -1 0 -12 9 6 1];
for n = 1:size(x')
  if x(n) > 0
    x(n) = 0;
  end
end
x

%% Exercise 5 Part b
% Set the values that are multiples of 3 to 3 (rem will help here)
x = [3 15 9 12 -1 0 -12 9 6 1];
for n = 1:size(x')
  if rem(x(n), 3) == 0
    x(n) = 3;
  end
end
x

%% Exercise 5 Part c
% Multiply the values of $x$ that are even by 5
x = [3 15 9 12 -1 0 -12 9 6 1];
for n = 1:size(x')
  if rem(x(n), 2) == 0
    x(n) = x(n) * 5;
  end
end
x

%% Exercise 5 Part d
% Extract the values of $x$ that are greater than 10 into a vector called $y$
x = [3 15 9 12 -1 0 -12 9 6 1];
y = [];
for n = 1:size(x')
  if x(n) > 10
    y = [y x(n)];
  end
end
y

%% Exercise 5 Part e
% Set the values in $x$ that are less than the mean to zero
x = [3 15 9 12 -1 0 -12 9 6 1];
m = sum(x, 2) / size(x, 2);
for n = 1:size(x')
  if x(n) < m
    x(n) = 0;
  end
end
x

%% Exercise 5 Part f
% Set the values in $x$ that are above the mean to their difference from the mean
x = [3 15 9 12 -1 0 -12 9 6 1];
m = sum(x, 2) / size(x, 2);
for n = 1:size(x')
  if x(n) > m
    x(n) = x(n) - m;
  end
end
x

%% Exercise 7
% Given that $x = \left[\matrix{1 & 5 & 2 & 8 & 9 & 0}\right]$ and $y =
% \left[\matrix{5 & 2 & 2 & 6 & 0 & 0 & 2}\right]$, execute and explain the
% results of the following commands.
x = [1 5 2 8 9 0 1];
y = [5 2 2 6 0 0 2];

%% Exercise 7 Part a
% This is a row vector where the elements are 1 (true) if the respective
% element of $x$ is greater than the respective element of $y$, and 0 (false)
% otherwise.
x > y

%% Exercise 7 Part b
% This is a row vector where the elements are 1 (true) if the respective
% element of $y$ is less than the respective element of $x$, and 0 (false)
% otherwise.
%
% This is the same as Part a.
y < x

%% Exercise 7 Part c
% This is a row vector where the elements are 1 (true) if the respective
% element of $x$ is equal to the respective element of $y$, and 0 (false)
% otherwise.
x == y

%% Exercise 7 Part d
% This is a row vector where the elements are 1 (true) if the respective
% element of $x$ is less than or equal to the respective element of $y$, and 0
% (false) otherwise.
x <= y

%% Exercise 7 Part e
% This is a row vector where the elements are 1 (true) if the respective
% element of $y$ is greater than or equal to the respective element of $x$, and
% 0 (false) otherwise.
%
% This is the same as Part d
y >= x

%% Exercise 7 Part f
% This is a row vector where the elements are 1 (true) if either the respective
% element of $y$ or the respective element of $x$ (or both) is non-zero, and 0
% (false) otherwise.
x | y

%% Exercise 7 Part g
% This is a row vector where the elements are 1 (true) if both the respective
% element of $x$ and the respective element of $y$ are non-zero, and 0 (false)
% otherwise.
x & y

%% Exercise 7 Part h
% This is a row vector where the elements are 1 (true) if the respective
% element of $x$ is non-zero and the respective element of $y$ is zero, and 0
% (false) otherwise.
x & (~y)

%% Exercise 7 Part i
% This is a row vector where the elements are 1 (true) if the respective
% elemnet of $x$ is greater than the respective element of $y$, and 0 (false)
% otherwise.
%
% This is a tautology and would be better written as $x > y$.
%
% This is the same as Part a.
(x > y) | (y < x)

%% Exercise 7 Part j
% This is a row vector where the elements are 1 (true) if the respective
% element of $x$ is greater than the respective element of $y$, and 0 (false)
% otherwise.
%
% This is a tautology and would be better written as $x > y$.
%
% This is the same as Part a.
(x > y) & (y < x)

%% Exercise 8
% Write brief scripts to evaluate the following functions. If you start each
% script with a request for input (using input), you'll be able to test that
% your code provides the correct results.
%
% $t(y) =
% \left\{
% \matrix{
%   200; & \qquad y < 10,000 \cr
%   200 + 0.1\left(y - 10,000\right); & \qquad 10,000 \leq y < 20,000 \cr
%   1,200 + 0.15\left(y - 20,000\right); & \qquad 20,000 \leq y < 50,000 \cr
%   5,700 + 0.25\left(y - 50,000\right); & \qquad y \geq 50,000
% }
% \right)$

%% Exercise 8 Part a
exercise8fun(5000)

%% Exercise 8 Part b
exercise8fun(17000)

%% Exercise 8 Part c
exercise8fun(25000)

%% Exercise 8 Part d
exercise8fun(75000)

%% Exercise 9
% Create a 10--by--5 matrix of random numbers (use rand). Move through the
% matrix element by element, and set any value that is less than 0.2 to 0 and
% any value that is greater than (or equal to) 0.2 to 1.
A = rand(10, 5);
for idx = 1:numel(A)
  if A(idx) < 0.2
    A(idx) = 0;
  else
    A(idx) = 1;
  end
end
A

%% Exercise 10
% Write a script that will use the random-number generator rand to determine
% the following.

%% Exercise 10 Part a
% The number of random numbers it takes to add up to 20 (or more).
exercise10_parta_fun()

%% Exercise 10 Part b
% The number of random numbers it takes tbefore a number between 0.8 and 0.85
% occurs.
exercise10_partb_fun()

%% Exercise 10 (continued)
% It will be worthwhile to run your script several times (say 1000 times)
% because you are dealing with random numbers. Can you predict any of the
% results that are described above?

%% Histogram for Exercise 10 Part a
y = [];
for idx = 1:10000
  y = [y exercise10_parta_fun()];
end
histogram(y)

%% Histogram for Exercise 10 Part b
% The output should follow an exponential distribution, since the probability
% of getting a random number between 0.8 and 0.85 does not depend on any
% previously obtained random numbers.
y = [];
for idx = 1:10000
  y = [y exercise10_partb_fun()];
end
histogram(y)
