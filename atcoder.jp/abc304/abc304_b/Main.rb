N = gets.to_i
d_cnt = N.to_s.chars.size
puts d_cnt >= 4 ? N - (N % (10 ** (d_cnt - 3))) : N