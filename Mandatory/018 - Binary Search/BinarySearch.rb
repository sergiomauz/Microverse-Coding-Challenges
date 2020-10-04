def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  average = (max_interval + min_interval) / 2
  avg_squared = average * average
  error_margin = number - avg_squared

  return average if (error_margin < 0.0000001 && error_margin >= 0)

  return sqrt_recursive(number, min_interval, average) if avg_squared > number
  
  return sqrt_recursive(number, average, max_interval) if avg_squared < number
end

puts sqrt(25)
# => 5

puts sqrt(7056)
# => 84