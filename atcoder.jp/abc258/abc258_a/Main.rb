N = gets.to_i
h = 21 + N / 60
m = 0 + N % 60
puts format("%02d:%02d", h, m)