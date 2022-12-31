A, B, K = gets.split.map(&:to_i)
a = A - K < 0 ? 0 : A - K
if a == 0
    b = B + A - K < 0 ? 0 : B + A - K 
else
    b = B
end
puts [a, b].join(" ")