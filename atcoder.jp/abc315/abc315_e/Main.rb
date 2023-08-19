N = gets.to_i
graph = Array.new(N){[]}
N.times do |i|
  cp = gets.split.map(&:to_i)
  graph[i] = cp[1..-1]
end

@memo = {}
@ans = []

def dfs(graph, n)
  graph[n - 1].each do |g|
    next if @memo[g]
    @memo[g] = true
    dfs(graph, g)
  end
  @ans.unshift(n)
end

dfs(graph, 1)
@ans.delete(1)
puts @ans.reverse.join(" ")