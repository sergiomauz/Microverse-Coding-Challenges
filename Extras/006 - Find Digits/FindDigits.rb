def findDigits(n)
  digits = n.to_s.split('').map { |d| d.to_i }.select { |d| d > 0}
  divisors = digits.select { |digit| n % digit == 0 }

  divisors.length
end

p findDigits(1012)
