def isPalindromeArray(arr):
  reverseArr = list(map(lambda item: item, arr))
  reverseArr.reverse()
  isPalindrome = (''.join(list(map(lambda item: str(item), arr))) == ''.join(list(map(lambda item: str(item), reverseArr))))
  return isPalindrome

def palindromeIndex(s):
  charsArray = list(s)
  stringLength = len(charsArray)
  index = 0
  banExit = False
  
  while ((not banExit) and (index < stringLength - index - 1)):
    if (charsArray[index] == charsArray[stringLength - index - 1]):
      index += 1
    else:
      banExit = True
      temp1Array = list(map(lambda item: item, charsArray))
      temp1Array.pop(index)
      if (not isPalindromeArray(temp1Array)):
        temp2Array = list(map(lambda item: item, charsArray))
        temp2Array.pop(stringLength - index - 1)  
        if (isPalindromeArray(temp2Array)):          
          index = stringLength - index - 1
        else:
          index = -1
            
  if (banExit): 
    return index
  
  return -1

print(palindromeIndex("sergio"))
print(palindromeIndex("axxa"))
print(palindromeIndex("aaab"))
print(palindromeIndex("baa"))