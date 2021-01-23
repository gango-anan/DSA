# Fibonacci Numbers using memoization 
def fib(n, temp_store = {})
  return temp_store[n] if temp_store.include?(n)
  return 1 if n <= 2
  temp_store[n] = fib(n - 1, temp_store) + fib(n - 2, temp_store)
  temp_store[n]
end

p fib(8)
p fib(10)
p fib(50)
p fib(100)