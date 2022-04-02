x1, y1 = gets.split.map(&:to_i)
x2, y2 = gets.split.map(&:to_i)
x3, y3 = gets.split.map(&:to_i)

result = []
if x1 == x2
    result << x3
elsif x2 == x3
    result << x1
else
    result << x2
end

if y1 == y2
    result << y3
elsif y2 == y3
    result << y1
else
    result << y2
end

puts result.join(" ")