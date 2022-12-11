A, B, C = gets.split.map(&:to_i)
a = A % 10
b = B.pow(C, 4) + 4
puts A.pow(b, 10)