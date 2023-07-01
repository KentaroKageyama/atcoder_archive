require 'bigdecimal'

N = gets.to_i
persons = []
N.times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  persons << [BigDecimal(a.to_s) / BigDecimal((a + b).to_s), i + 1]
end
puts persons.sort_by{|p| -p[0]}.map{|p| p[1]}.join(" ")