H, W = gets.split.map(&:to_i)
grid = []
H.times{grid << gets.chomp}
piece_a = []
piece_b = []
H.times do |i|
    W.times do |j|
        if grid[i][j] == "o" && piece_a.empty?
            piece_a = [i, j]
        elsif grid[i][j] == "o"
            piece_b = [i, j]
        end
    end
end

result = 0
2.times do |i|
    result += (piece_a[i] - piece_b[i]).abs
end

puts result