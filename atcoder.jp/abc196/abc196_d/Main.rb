H, W, A, B = gets.split.map(&:to_i)
@used = Array.new(H){Array.new(W, false)}
@cnt = 0
def dfs(x, y, a)
    return a == 0 ? 1 : 0 if H == y
    return dfs(0, y + 1, a) if W == x
    return dfs(x + 1, y, a) if @used[y][x]
    res = 0
    if y + 1 < H && 0 < a
        @used[y][x] = @used[y + 1][x] = true
        res += dfs(x + 1, y, a - 1)
        @used[y][x] = @used[y + 1][x] = false
    end
    if x + 1 < W && !@used[y][x + 1] && 0 < a
        @used[y][x] = @used[y][x + 1] = true
        res += dfs(x + 1, y, a - 1)
        @used[y][x] = @used[y][x + 1] = false
    end
    res += dfs(x + 1, y, a)
    return res
end
puts dfs(0, 0, A)
