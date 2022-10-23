N = gets.to_i
max_4 = N / 4
max_7 = N / 7
(max_4 + 1).times do |i|
    (max_7 + 1).times do |j|
        amount = i * 4 + j * 7
        if amount == N
            puts "Yes"
            exit
        end
    end
end
puts "No"