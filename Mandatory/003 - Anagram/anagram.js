function anagram(s) {
  const arrayEvalChars = s.split('');
  const lengthString = arrayEvalChars.length;

  let count = -1;
  if (lengthString % 2 === 0) {
    const s1 = arrayEvalChars.slice(0, (lengthString / 2));
    const s2 = arrayEvalChars.slice((lengthString / 2));
    s1.forEach((char) => {
      let indexOfChar = s2.indexOf(char);
      if (indexOfChar > -1) { s2.splice(indexOfChar, 1); }
    });

    count = s2.length;
  }

  return count;
}

console.log(anagram('xaxbbbxx'));