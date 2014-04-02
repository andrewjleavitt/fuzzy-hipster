# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34
def fib(x)
  puts x
  return x unless x >= 1

  x = x + fib(x - 1)
end

sum = fib 10
puts sum