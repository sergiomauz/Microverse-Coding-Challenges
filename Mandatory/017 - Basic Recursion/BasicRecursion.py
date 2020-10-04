def sum(number):
  if (number > 2): return number + sum(number - 1) 
  if (number == 1): return number  
  return 3

print(sum(4))
# => 10

print(sum(10))
# => 55