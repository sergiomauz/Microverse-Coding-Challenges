def SumatoryFibonacciEvens(n)
  last = 1
  beforeLast = 0
  fibonacciNumber = 1
  sumatoryEvens = 0

  if n > 1
    while (fibonacciNumber + beforeLast <= n) do          
      fibonacciNumber = beforeLast + last
      beforeLast = last
      last = fibonacciNumber

      sumatoryEvens += fibonacciNumber if fibonacciNumber.even?
    end
  end

  sumatoryEvens
end

p SumatoryFibonacciEvens(40000000000000000)