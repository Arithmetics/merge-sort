#fibs takes a number and returns that many members of the fibonacci sequence
#uses iteration

def fib(n)
  arr = []
  x = 1
  y = 1
  save = 0

  if n == 1
    arr << x
  else
    arr << x
    arr << y
    (n-2).times do
      save = x
      x = x+y
      y = save
      arr << x
    end
  end
    arr
end


#same thing but recursive
def rec_fib(n)
  if n == 1
    arr = [1]
  elsif n == 2
    arr = [1,1]
  else
    arr = rec_fib(n-1)
    arr << (arr[-1] + arr[-2])
  end
end
