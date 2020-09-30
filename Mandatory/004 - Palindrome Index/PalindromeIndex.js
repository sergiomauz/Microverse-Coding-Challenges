function isPalindromeArray(arr) {
  const reverseArr = [...arr].reverse();
  return (arr.join('') === reverseArr.join(''))
}

function palindromeIndex(s) {
  let temp1Array;
  let temp2Array;
  const charsArray = s.split('');
  const stringLength = charsArray.length;
  let index = 0;
  let banExit = false;

  while (!banExit && index < stringLength - index - 1) {
    if (charsArray[index] === charsArray[stringLength - index - 1]) {
      index += 1;
    } else {
      banExit = true
      temp1Array = [...charsArray];
      temp1Array.splice(index, 1);
      if (!isPalindromeArray(temp1Array)) {
        temp2Array = [...charsArray];
        temp2Array.splice(stringLength - index - 1, 1);
        if (isPalindromeArray(temp2Array)) {
          index = stringLength - index - 1;
        } else {
          index = -1
        }
      }
    }
  }

  if (banExit) {
    return index;
  }

  return -1;
}

console.log(palindromeIndex('sergio'));
console.log(palindromeIndex('axxa'));
console.log(palindromeIndex('aaab'));
console.log(palindromeIndex('baa'));
