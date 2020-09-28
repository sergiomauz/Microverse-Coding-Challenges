def anagram(s):
  arrayEvalChars = list(s)
  lengthString = len(arrayEvalChars)
  
  count = -1
  if lengthString % 2 == 0:
    s1 = arrayEvalChars[:(lengthString // 2)]
    s2 = arrayEvalChars[(lengthString // 2):]
    
    for char in s1:      
      try:
        indexOfChar = s2.index(char)
      except ValueError:
        indexOfChar = -1
      
      if indexOfChar > -1:
        s2.remove(char)
  
    count = len(s2)
    
  return count

print(anagram('xaxbbbxx'))