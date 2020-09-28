function repeatedString(evaluatedString, numberCharacters) {
  const arrayEvalChars = evaluatedString.split('');

  const repetitions = Math.floor(numberCharacters / arrayEvalChars.length);

  let count_a = repetitions * arrayEvalChars.filter(char => char === 'a').length;

  let surplus = numberCharacters % arrayEvalChars.length;

  if (surplus > 0) {
    const arraySurplus = arrayEvalChars.slice(0, surplus);
    count_a += arraySurplus.filter(char => char === 'a').length;
  }

  return count_a;
}

console.log(repeatedString('aba', 10));
