L, R = gets.split(" ").map!(&:to_i)
str = gets.chomp
pick = str[(L - 1)..(R - 1)]
pick.reverse!
R != str.length ? r = str[R..str.length] : r = ""
L != 1 ? l = str[0..(L - 2)] : l = ""
puts l + pick + r