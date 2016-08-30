function [n] = exercise10_partb_fun()
% exercise10_partb_fun  Implements the function described in Part b of Exercise 10
  x = rand;
  n = 1;
  while ~((0.8 < x) && (x < 0.85))
    x = rand;
    n = n + 1;
  end
end
