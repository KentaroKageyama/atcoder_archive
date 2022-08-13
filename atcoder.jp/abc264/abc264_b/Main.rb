R, C = gets.split.map(&:to_i)

grid = Array.new(15){|a| [""] * 15}
8.times do |i|
    color = i % 2 == 0 ? "black" : "white"
    grid_n = (15 - i * 2)
    grid_n.times do |j|
        if j == 0 || j == grid_n - 1
            grid_n.times do |k|
                grid[j + i][k + i] = color
            end
        else
            grid[j + i][i] = color
            grid[j + i][-1 - i] = color
        end
    end
end

puts grid[R - 1][C - 1]