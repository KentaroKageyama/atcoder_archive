H, W = gets.split.map(&:to_i)
N = [H, W].min
DIR = [[-1, -1], [-1, 1], [1, -1], [1, 1]]
ans = Array.new(N, 0)
grid = []
H.times{grid << gets.chomp}
def x_check(grid, h, w)
    if grid[h][w] != "#"
        return false
    end
    4.times do |i|
        if grid[h + DIR[i][0]][w + DIR[i][1]] != "#"
            return false
        end
    end
    return true
end
(H - 2).times do |i|
    i += 1
    (W - 2).times do |j|
        j += 1
        if x_check(grid, i, j)
            min_cnt = N + 1
            4.times do |k|
                l = 1
                cnt = 0
                while true
                    break if min_cnt <= cnt
                    dir_h = DIR[k][0] * l
                    dir_w = DIR[k][1] * l
                    if i + dir_h == H || j + dir_w == W || i + dir_h < 0 || j + dir_w < 0 || grid[i + dir_h][j + dir_w] != "#"
                        min_cnt = [min_cnt, cnt].min
                        break
                    end
                    l += 1
                    cnt += 1
                end
            end
            ans[min_cnt - 1] += 1
        end
    end
end
puts ans.join(" ")