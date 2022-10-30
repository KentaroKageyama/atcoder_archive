K, S = gets.split.map(&:to_i)
count = 0
(0..K).each do |x|
    (0..K).each do |y|
        if (x + y) <= S && S - (x + y) <= K
            count += 1
        end
    end
end
puts count