def findDigits(n):
  digits = list(filter(lambda d: d > 0, list(map(lambda d: int(d), list(f'{n}')))))
  divisors = list(filter(lambda digit: n % digit == 0, digits))
  
  return len(divisors)


print(findDigits(1012))
