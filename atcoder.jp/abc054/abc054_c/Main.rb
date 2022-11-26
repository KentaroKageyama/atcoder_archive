N, M = gets.split.map(&:to_i)
@nodes = Array.new(N){Array.new([])}
@count = 0
@history = [0] * N
M.times do |i|
    a, b = gets.split.map(&:to_i)
    @nodes[a - 1] << b - 1
    @nodes[b - 1] << a - 1
end
i = 0
def next_node(node)
    if @history.all?{|h| h == 1}
        @history[node] = 0
        @count += 1
        return
    end
    @nodes[node].each do |n|
        next if @history[n] == 1
        @history[n] = 1
        next_node(n)
    end
    @history[node] = 0
end
@history[0] = 1
next_node(0)
puts @count