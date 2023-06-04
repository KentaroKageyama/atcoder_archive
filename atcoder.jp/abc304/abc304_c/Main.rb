N, D = gets.split.map(&:to_i)
coords = []
N.times do
    x, y = gets.split.map(&:to_i)
    coords << [x, y]
end
v_ranges = Array.new(N){Array.new()}
N.times do |i|
    N.times do |j|
        next if i == j
        if Math.sqrt((coords[i][0] - coords[j][0]) ** 2 + (coords[i][1] - coords[j][1]) ** 2) <= D
            v_ranges[i] << j
        end
    end
end
def dfs(v_ranges, v_range, ans)
    v_range.each do |v_r|
        next if ans[v_r]
        ans[v_r] = true
        dfs(v_ranges, v_ranges[v_r], ans)
    end
    return ans
end
ans = {}
ans[0] = true
ans = dfs(v_ranges, v_ranges[0], ans)
N.times do |i|
    puts ans[i] ? "Yes" : "No"
end