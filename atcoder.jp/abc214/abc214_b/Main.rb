S, T = gets.split(" ").map!(&:to_i)
count = 0

(S + 1).times do |i|
    (S + 1).times do |j|
        (S + 1).times do |k|
            if i + j + k <= S && i * j * k <= T
                count += 1
            end
        end
    end
end

puts count