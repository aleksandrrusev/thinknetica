fibonacci_arr = [0, 1]
next_number = 1
while next_number <= 100 do
  fibonacci_arr << next_number
  next_number = fibonacci_arr[-1] + fibonacci_arr[-2]
end
print fibonacci_arr
