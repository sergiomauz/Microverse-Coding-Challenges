def anagram(s)
  arrayEvalChars = s.split('')
  lengthString = arrayEvalChars.length

  count = -1
  if lengthString.even?    
    s1 = arrayEvalChars[0..(-1 + lengthString / 2)]
    s2 = arrayEvalChars[(lengthString / 2).. -1]

    s1.each { |char|
      indexOfChar = s2.index(char)
      s2.delete_at(indexOfChar) if !indexOfChar.nil?
    }

    count = s2.length
  end

  count
end

p anagram('xaxbbbxx')
