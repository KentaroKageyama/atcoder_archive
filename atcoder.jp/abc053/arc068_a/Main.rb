N = gets.to_i
d, m = N.divmod(11)
t = 0
t = m <= 6 ? 1 : 2 if m != 0
puts d * 2 + t