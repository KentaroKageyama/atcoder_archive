a, b, d = gets.split.map(&:to_i)
result = []
result << a * Math.cos(d * Math::PI / 180) - b * Math.sin(d * Math::PI / 180)
result << a * Math.sin(d * Math::PI / 180) + b * Math.cos(d * Math::PI / 180)
puts result.join(" ")