def timeInWords(h, m)
  stringHours = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve']
  stringMinutes = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
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
    stringTime = "#{stringHours[newHour]} o' clock"
  elsif newMinutes == 1
    stringTime = "#{stringMinutes[newMinutes]} minute #{hourStringPrefix} #{stringHours[newHour]}"
  elsif newMinutes == 15 || newMinutes == 30
    stringTime = "#{stringMinutes[newMinutes]} #{hourStringPrefix} #{stringHours[newHour]}"
  else
    stringTime = "#{stringMinutes[newMinutes]} minutes #{hourStringPrefix} #{stringHours[newHour]}"
  end

  stringTime
end


puts timeInWords(12, 38)