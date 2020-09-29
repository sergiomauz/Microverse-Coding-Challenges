def SumatoryFibonacciEvens(n):
  last = 1
  beforeLast = 0
  fibonacciNumber = 1
  sumatoryEvens = 0

  if n > 1:
    while (fibonacciNumber + beforeLast <= n):
      fibonacciNumber = beforeLast + last
      beforeLast = last
      last = fibonacciNumber

      if fibonacciNumber % 2 == 0:
        sumatoryEvens += fibonacciNumber
    
  return sumatoryEvens

print(SumatoryFibonacciEvens(40000000000000000))
