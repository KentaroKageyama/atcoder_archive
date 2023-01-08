N, M = gets.split.map(&:to_i)
grid = []
road_cnt = 0
N.times do |i|
    line = gets.chomp
    road_cnt += line.count(".")
    grid << line
end
ds = [[-1, 0], [0, 1], [1, 0], [0, -1]]
ans = 0
N.times do |i|
    M.times do |j|
        if grid[i][j] == "#"
            vis = Array.new(N){Array.new(M, false)}
            que = [[i, j]]
            grid[i][j] = "."
            vis[i][j] = true
            vis_cnt = 1
            while !que.empty?
                y_q, x_q = que.shift
                ds.each do |d|
                    y = y_q + d[0]
                    x = x_q + d[1]
                    next if y < 0 || x < 0 || y >= N || x >= M || grid[y][x] == "#" || vis[y][x]
                    vis[y][x] = true
                    vis_cnt += 1
                    que << [y, x]
                end
            end
            grid[i][j] = "#"
            ans += 1 if (road_cnt + 1) == vis_cnt
        end
    end
end
puts ans
