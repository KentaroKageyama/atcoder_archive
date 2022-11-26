N = gets.to_i
@nodes = Array.new(N){Array.new([])}
(N - 1).times do |i|
    a, b = gets.split.map(&:to_i)
    @nodes[a - 1] << b - 1
    @nodes[b - 1] << a - 1
end
@memo = [0] * N
@a_group = []
@b_group = []
def dfs(pos, cur)
    @memo[pos] = 1
    case cur
    when 0
        @a_group << pos + 1
    when 1
        @b_group << pos + 1
    end
    @nodes[pos].each do |node|
        if @memo[node] == 0
            dfs(node, 1 - cur)
        end
    end
end
dfs(0, 0)
if @a_group.size > @b_group.size
    puts @a_group[0..(N / 2 - 1)].join(" ")
else
    puts @b_group[0..(N / 2 - 1)].join(" ")
end