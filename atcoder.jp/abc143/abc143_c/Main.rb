N = gets.to_i
S = gets.chomp
count = 1
(S.length - 1).times do |i|
    if S[i] != S[i + 1]
        count += 1
    end
end
puts count