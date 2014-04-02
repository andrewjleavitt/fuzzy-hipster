# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34
def fib(x)
  return x if x <= 1
  fib(x - 1) + fib(x - 2)
end

fib 10
