S = gets.chomp
T = gets.chomp
min = Float::INFINITY
(S.length - T.length + 1).times do |i|
    count = 0
    T.length.times do |j|
        if S[i + j] != T[j]
            count += 1
        end
    end
    min = [min, count].min
end
puts min