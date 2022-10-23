H, W, X, Y = gets.split.map(&:to_i)
grid = []
H.times do
    grid << gets.chomp
end
dir = ["U", "R", "D", "L"]
count = 1
dir.each do |d|
    i = 0
    x = X - 1
    y = Y - 1
    case d
    when "U"
        while true
            i += 1
            x -= 1
            break if x < 0 || grid[x][y] == "#"
            count += 1
        end
    when "R"
        while true
            i += 1
            y += 1
            break if y >= W || grid[x][y] == "#"
            count += 1
        end
    when "D"
        while true
            i += 1
            x += 1
            break if x >= H || grid[x][y] == "#"
            count += 1
        end
    when "L"
        while true
            i += 1
            y -= 1
            break if y < 0 || grid[x][y] == "#"
            count += 1
        end
    end
end
puts count