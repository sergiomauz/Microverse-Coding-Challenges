import math

def repeatedString(evaluatedString, numberCharacters):
  arrayEvalChars = list(evaluatedString)
  
  repetitions = math.floor(numberCharacters / len(arrayEvalChars))
  
  count_a = repetitions * len(list(filter(lambda char : char == 'a', arrayEvalChars)))
                 
  surplus = numberCharacters % len(arrayEvalChars)

  if surplus > 0:
    arraySurplus = arrayEvalChars[0:surplus]    
    count_a +=  len(list(filter(lambda char : char == 'a', arraySurplus)))
  
  return count_a 

print(repeatedString('aba', 10))
