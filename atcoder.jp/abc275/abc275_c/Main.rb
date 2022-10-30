@grid = []
9.times do |i|
    @grid << gets.chomp
end
 
def check_square(h, w)
    count = 0
    ((w + 1)..8).each do |i|
        (h..8).each do |j|
            if @grid[j][i] == "#"
                h_a = h + (i - w)
                w_a = w - (j - h)
                h_b = j + (i - w)
                w_b = i - (j - h)
                if (h_a < 9 && w_a >= 0 && @grid[h_a][w_a] == "#") && (h_b < 9 && w_b >= 0 && @grid[h_b][w_b] == "#")
                    count += 1
                end
            end
        end
    end
    return count
end
 
result = 0
8.times do |i|
    8.times do |j|
        if @grid[i][j] == "#"
            result += check_square(i, j)
        end
    end
end
puts result