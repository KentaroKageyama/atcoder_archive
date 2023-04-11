H, W = gets.split.map(&:to_i)
table = []
H.times do |i|
    table << gets.chomp
end
H.times do |i|
    (W - 1).times do |j|
        if table[i][j] == 'T' && table[i][j + 1] == 'T'
            table[i][j] = 'P'
            table[i][j + 1] = 'C'
        end
    end
    puts table[i]
end