def ordinalize(number)
  last_digit = number.to_s[-1, 1]
  return number.to_s + 'th' if number.to_s[-2, 1] == '1'
  case last_digit
  when '1' then number.to_s + 'st'
  when '2' then number.to_s + 'nd'
  when '3' then number.to_s + 'rd'
  else number.to_s + 'th'
  end
end
