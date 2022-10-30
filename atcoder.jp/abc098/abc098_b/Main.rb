N = gets.to_i
S = gets.chomp
max = 0
(N - 1).times do |i|
    a = S.slice(0..i).chars.uniq
    b = S.slice(i + 1..N).chars.uniq
    max = [max, (a & b).size].max
end
puts max