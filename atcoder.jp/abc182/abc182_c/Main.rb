N = gets.chomp.chars
if N.join.to_i % 3 == 0
    puts 0
    exit
end
result = Float::INFINITY
(N.size - 1).times do |i|
    i += 1
    comb = N.combination(i).to_a
    comb.each do |c|
        if c.join.to_i % 3 == 0
            result = [result, N.size - i].min
        end
    end
end
puts result == Float::INFINITY ? -1 : result
