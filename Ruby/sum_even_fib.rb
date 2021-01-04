# for 10<= n <= 4*10^6
fib1 = 0;
fib2 = 1;
sum_ = 0;
while(fib1 + fib2) < n
  sum_ += fib1 + fib2 if (fib1 + fib2).even?
  fib1, fib2 = fib2, fib1 + fib2;
end
puts sum_