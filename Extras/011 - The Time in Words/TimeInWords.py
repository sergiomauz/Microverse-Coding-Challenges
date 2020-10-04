def timeInWords(h, m):
  stringHours = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve']
  stringMinutes = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
    'thirteen', 'fourteen', 'quarter', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty', 'twenty one', 'twenty two',
    'twenty three', 'twenty four', 'twenty five', 'twenty six', 'twenty seven', 'twenty eight', 'twenty nine', 'half']
  
  newHour = h
  newMinutes = m
  stringTime = ''
  
  if (m > 30):
    newMinutes = 60 - m
    newHour = h + 1
  
  hourStringPrefix = 'to' if (newHour > h) else 'past'  
  
  if (newHour > 12): newHour = 1
  
  if (newMinutes == 0):
    stringTime = f"{stringHours[newHour]} o' clock"
  elif (newMinutes == 1):
    stringTime = f"{stringMinutes[newMinutes]} minute {hourStringPrefix} {stringHours[newHour]}"
  elif (newMinutes == 15 or newMinutes == 30):
    stringTime = f"{stringMinutes[newMinutes]} {hourStringPrefix} {stringHours[newHour]}"
  else:
    stringTime = f"{stringMinutes[newMinutes]} minutes {hourStringPrefix} {stringHours[newHour]}"
  
  return stringTime

print(timeInWords(12, 38))