tfunction [t] = exercise8fun(y)
% exercise8fun  Implements the piecewise function defined in Exercise 8
  if y < 10000
    t = 200;
  elseif y < 20000
    t = 200 + 0.1 * (y - 10000);
  elseif y < 50000
    t = 1200 + 0.15 * (y - 20000);
  else
    t = 5700 + 0.25 * (y - 50000);
  end
end
