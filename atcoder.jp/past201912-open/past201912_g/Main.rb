N = gets.to_i
@points = []
@max = -Float::INFINITY
(N - 1).times do |i|
    @points << gets.split.map(&:to_i)
end
def dfs(n, group)
    if n == N
        sum = 0
        group.each do |g|
            next if g.empty? || g.size == 1
            g.combination(2).to_a.each do |g_c|
                sum += @points[g_c[0]][g_c[1] - g_c[0] - 1]
            end
        end
        @max = [@max, sum].max
        return 
    end
    3.times do |i|
        group[i] << n
        dfs(n + 1, group)
        group[i].delete_at(-1)
    end
end
group = Array.new(3){Array.new([])}
dfs(0, group)
puts @max