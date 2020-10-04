function new_sqrt(number) {
  return sqrt_recursive(number, 0, number);
}

function sqrt_recursive(number, min_interval, max_interval) {
  const average = parseInt((max_interval + min_interval) / 2);
  const avg_squared = average * average;
  const error_margin = number - avg_squared;

  if (error_margin < 0.0000001 && error_margin >= 0) {
    return average;
  }

  if (avg_squared > number) {
    return sqrt_recursive(number, min_interval, average);
  }

  if (avg_squared < number) {
    return sqrt_recursive(number, average, max_interval);
  }
}

console.log(new_sqrt(25));
// => 5

console.log(new_sqrt(7056));
// => 84
