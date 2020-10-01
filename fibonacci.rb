# Takes a number and returns that many numbers of the fibonacci sequence by using iteration

def fibs(num)
  first_number = 0
  second_number = 1
  counter = 0
  while counter <= num
    counter += 1
    puts first_number
    first_number, second_number = second_number, first_number + second_number
  end
end

# Takes a number and returns that instance of the fibonacci sequence using recursion

def fibonacci(num)
  if num < 2
    num
  else
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end

# Same as #fibonacci but one-liner

def fib(num)
  num < 2 ? num : fibonacci(num - 1) + fibonacci(num - 2)
end

# Takes a number and returns the sequence from fibonacci up to that number, using recursion

def fibs_rec(num)
  return [0, 1] if num == 1

  sequence = fibs_rec(num - 1)
  sequence << sequence[-1] + sequence[-2]
end

fibs(12) # => 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144
puts

puts fibonacci(6) # => 8
puts

puts fib(6) # => 8
puts

puts fibs_rec(8) # => 0, 1, 1, 2, 3, 5, 8, 13, 21
