r, g, b = gets.chomp.split
num = (r + g + b).to_i
puts num % 4 == 0 ? "YES" : "NO"