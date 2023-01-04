N, x, y = gets.split.map(&:to_i)
BASE = 250
MAX = 500
X = BASE + x
Y = BASE + y
blocked = Array.new(505){Array.new(505, false)}
dx = [1, 0, -1, 1, -1, 0]
dy = [1, 1, 1, 0, 0, -1]
N.times do |i|
    x, y = gets.split.map(&:to_i)
    blocked[y + BASE][x + BASE] = true
end

vis = Array.new(505){Array.new(505, false)}
mi = Array.new(505){Array.new(505, 0)}
que = [[BASE, BASE]]
vis[BASE][BASE] = true

while !que.empty?
    x, y = que.shift
    6.times do |i|
        xx = x + dx[i]
        yy = y + dy[i]
        if 0 <= xx && xx < MAX && 0 <= yy && yy < MAX
            next if blocked[yy][xx]
            next if vis[yy][xx]
            vis[yy][xx] = true
            mi[yy][xx] = mi[y][x] + 1
            que << [xx, yy]
        end
    end
end
puts vis[Y][X] ? mi[Y][X] : -1
