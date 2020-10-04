function timeInWords(h, m) {
  const stringHours = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve'];
  const stringMinutes = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
    'thirteen', 'fourteen', 'quarter', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty', 'twenty one', 'twenty two',
    'twenty three', 'twenty four', 'twenty five', 'twenty six', 'twenty seven', 'twenty eight', 'twenty nine', 'half'];

  let newHour = h;
  let newMinutes = m;
  let stringTime = '';

  if (m > 30) {
    newMinutes = 60 - m;
    newHour = h + 1;
  }

  let hourStringPrefix = (newHour > h ? 'to' : 'past');

  if (newHour > 12) { newHour = 1; }

  if (newMinutes === 0) {
    stringTime = `${stringHours[newHour]} o' clock`;
  } else if (newMinutes === 1) {
    stringTime = `${stringMinutes[newMinutes]} minute ${hourStringPrefix} ${stringHours[newHour]}`;
  } else if (newMinutes === 15 || newMinutes === 30) {
    stringTime = `${stringMinutes[newMinutes]} ${hourStringPrefix} ${stringHours[newHour]}`;
  } else {
    stringTime = `${stringMinutes[newMinutes]} minutes ${hourStringPrefix} ${stringHours[newHour]}`;
  }

  return stringTime;
}

console.log(timeInWords(12, 38));