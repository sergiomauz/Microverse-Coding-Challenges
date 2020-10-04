def sum(number)  
  return number + sum(number - 1) if number > 2
  return number if number == 1
  3
end

puts sum(4)
# => 10

puts sum(10)
# => 55