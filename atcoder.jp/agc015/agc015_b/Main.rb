ud = gets.chomp.chars
ans = 0
floors = ud.size
floors.times do |i|
  if i == 0 || i == floors - 1
    ans += floors - 1
    next
  end
  case ud[i]
  when "U"
    ans += floors - (i + 1)
    ans += i * 2
  when "D"
    ans += (floors - (i + 1)) * 2
    ans += i
  end
end
puts ans