H, A = gets.split.map(&:to_i)
count = H / A
count += 1 if H % A != 0
puts count