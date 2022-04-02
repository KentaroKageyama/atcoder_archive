a, b = gets.split.map(&:to_i)
c = Math.sqrt(a ** 2 + b ** 2)

puts "#{a / c.to_f} #{b / c.to_f}"