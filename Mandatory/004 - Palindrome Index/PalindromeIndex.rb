def isPalindromeArray(arr)
  reverseArr = arr.map { |item| item }.reverse()
  isPalindrome = (arr.join('') == reverseArr.join(''))
  isPalindrome
end

def palindromeIndex(s)
  charsArray = s.split('')
  stringLength = charsArray.length
  index = 0
  banExit = false

  while !banExit && index < stringLength - index - 1 do
    if (charsArray[index] == charsArray[stringLength - index - 1])
      index += 1
    else
      banExit = true
      temp1Array = charsArray.map { |item| item }
      temp1Array.delete_at(index)
      if !isPalindromeArray(temp1Array)
        temp2Array = charsArray.map { |item| item }
        temp2Array.delete_at(stringLength - index - 1)
        if isPalindromeArray(temp2Array)
          index = stringLength - index - 1
        else
          index = -1
        end
      end
    end
  end

  return index if banExit
  -1
end
   
p palindromeIndex('sergio')
p palindromeIndex('axxa')
p palindromeIndex('aaab')
p palindromeIndex('baa')
