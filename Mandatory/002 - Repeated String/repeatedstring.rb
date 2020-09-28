def repeatedString(evaluatedString, numberCharacters)
  arrayEvalChars = evaluatedString.split('')

  repetitions = (numberCharacters / arrayEvalChars.length).floor()
    
  count_a = repetitions * arrayEvalChars.select { |char| char == 'a' }.length

  surplus = numberCharacters % arrayEvalChars.length

  if surplus > 0
    arraySurplus = arrayEvalChars[0..(surplus - 1)]
    count_a += arraySurplus.select { |char| char == 'a' }.length
  end

  count_a
end

p repeatedString('aba', 10)
