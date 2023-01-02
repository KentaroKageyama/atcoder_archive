H, W = gets.split.map(&:to_i)
@grid = []
@max = -1
H.times do |i|
    @grid << gets.chomp
end
def dfs(x, y, cnt)
    cnt += 1
    if y - 1 >= 0 && @grid[y - 1][x] == "." && !@history[y - 1][x]
        @history[y - 1][x] = true
        dfs(x, y - 1, cnt)
        @history[y - 1][x] = false
    end
    if x + 1 < W && @grid[y][x + 1] == "." && !@history[y][x + 1]
        @history[y][x + 1] = true
        dfs(x + 1, y, cnt)
        @history[y][x + 1] = false
    end
    if y + 1 < H && @grid[y + 1][x] == "." && !@history[y + 1][x]
        @history[y + 1][x] = true
        dfs(x, y + 1, cnt)
        @history[y + 1][x] = false
    end
    if x - 1 >= 0 && @grid[y][x - 1] == "." && !@history[y][x - 1]
        @history[y][x - 1] = true
        dfs(x - 1, y, cnt)
        @history[y][x - 1] = false
    end
    if [[y - 1, x], [y, x + 1], [y + 1, x], [y][x - 1]].include?(@start) && cnt >= 4
        @max = [@max, cnt].max
        return
    end
    cnt -= 1
end
H.times do |i|
    W.times do |j|
        if @grid[i][j] == "."
            @history = Array.new(H){Array.new(W, false)}
            @history[i][j] = true
            @start = [i, j]
            dfs(j, i, 0)
        end
    end
end
puts @max
