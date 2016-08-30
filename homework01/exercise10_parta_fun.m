function [n] = exercise10_parta_fun()
% exercise10_parta_fun  Implements the function described in Part a of Exercise 10
  n = 0;
  x = 0;
  while x < 20
    x = x + rand;
    n = n + 1;
  end
end
