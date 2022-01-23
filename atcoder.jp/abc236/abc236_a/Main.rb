str = gets.chomp
a, b = gets.split.map!(&:to_i)

temp = str[a - 1]
str[a - 1] = str[b - 1]
str[b - 1] = temp
puts str
