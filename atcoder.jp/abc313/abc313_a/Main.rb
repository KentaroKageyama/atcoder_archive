N = gets.to_i
P = gets.split.map(&:to_i)
if P[0] == P.max
  puts P.count(P[0]) > 1 ? 1 : 0
else
  puts P.max - P[0] + 1
end