require 'date'

print "誕生日(西暦): "
birth_str = gets
birth_date = Date.parse(birth_str)

def calc_age(birth_date)
  today_date = Date.today
  age = today_date.year - birth_date.year
  if today_date < Date.new(today_date.year, birth_date.month, birth_date.day) then
    age -= 1
  end
  return age
end

age = calc_age(birth_date)
puts "年齢: #{age}"
