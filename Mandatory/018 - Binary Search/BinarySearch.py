def new_sqrt(number):
  return sqrt_recursive(number, 0, number)

def sqrt_recursive(number, min_interval, max_interval):
  average = (max_interval + min_interval) // 2
  avg_squared = average * average
  error_margin = number - avg_squared

  if (error_margin < 0.0000001 and error_margin >= 0): return average

  if (avg_squared > number): return sqrt_recursive(number, min_interval, average)
  
  if (avg_squared < number): return sqrt_recursive(number, average, max_interval)


print(new_sqrt(25))
# => 5

print(new_sqrt(7056))
# => 84
