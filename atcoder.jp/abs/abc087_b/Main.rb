n_500 = gets.to_i
n_100 = gets.to_i
n_50 = gets.to_i
X = gets.to_i
count = 0

(0..n_500).each do |i|
    (0..n_100).each do |j|
        (0..n_50).each do |k|
            if i * 500  + j * 100 + k * 50 == X
                count += 1
            end
        end
    end
end

puts count