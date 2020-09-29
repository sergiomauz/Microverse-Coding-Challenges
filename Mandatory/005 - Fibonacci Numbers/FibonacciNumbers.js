// It has a LIMIT between 1.4e16 and 1.5e16. In the future I will try to solve it
function SumatoryFibonacciEvens(n) {
  let last = 1;
  let beforeLast = 0;
  let fibonacciNumber = 1;
  let sumatoryEvens = 0;

  if (n > 1) {
    while (fibonacciNumber + beforeLast <= n) {
      fibonacciNumber = beforeLast + last;
      beforeLast = last;
      last = fibonacciNumber;

      if (fibonacciNumber % 2 === 0) { sumatoryEvens += fibonacciNumber; }
    }
  }

  return sumatoryEvens;
}

console.log(SumatoryFibonacciEvens(4000000));
