def timeInWords(h, m)
  stringHours = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve']
  stringMinutes = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
    'thirteen', 'fourteen', 'quarter', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty', 'twenty one', 'twenty two',
    'twenty three', 'twenty four', 'twenty five', 'twenty six', 'twenty seven', 'twenty eight', 'twenty nine', 'half']

  newHour = h
  newMinutes = m
  stringTime = ''

  if m > 30
    newMinutes = 60 - m;
    newHour = h + 1;
  end  
  
  hourStringPrefix = (newHour > h ? 'to' : 'past')
  
  newHour = 1 if newHour > 12

  if newMinutes == 0
    stringTime = "#{stringHours[newHour - 1]} o' clock"
  elsif newMinutes == 1
    stringTime = "#{stringMinutes[newMinutes - 1]} minute #{hourStringPrefix} #{stringHours[newHour - 1]}"
  elsif newMinutes == 15 || newMinutes == 30
    stringTime = "#{stringMinutes[newMinutes - 1]} #{hourStringPrefix} #{stringHours[newHour - 1]}"
  else
    stringTime = "#{stringMinutes[newMinutes - 1]} minutes #{hourStringPrefix} #{stringHours[newHour - 1]}"
  end

  stringTime
end


puts timeInWords(1, 58)