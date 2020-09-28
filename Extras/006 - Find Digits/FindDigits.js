function findDigits(n) {
  const digits = `${n}`.split('').map(d => parseInt(d)).filter(d => d > 0);
  const divisors = digits.filter(digit => n % digit === 0);

  return divisors.length;
}

console.log(findDigits(1012));
