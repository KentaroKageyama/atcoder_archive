S = gets.chomp
front = S[0..S.length / 2 - 1]
back = S[S.length / 2..-1].reverse
count = 0
(S.length / 2).times do |i|
    count += 1 if front[i] != back[i]
end
puts count