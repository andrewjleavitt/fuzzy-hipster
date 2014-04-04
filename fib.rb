# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34
def fib(x)
  return x if x <= 1
  fib(x - 1) + fib(x - 2)
end

puts fib 10

fib_l = -> (x){ x<=1 ? x : fib_l[x-1] + fib_l[x-2]}

puts fib_l[10]