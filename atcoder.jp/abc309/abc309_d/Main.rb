N1, N2, M = gets.split.map(&:to_i)
graph = Array.new(N1 + N2){Array.new()}
M.times do |i|
  a, b = gets.split.map(&:to_i)
  graph[a - 1] << b - 1
  graph[b - 1] << a - 1
end
que = []
que << [0, 0]
memo = {}
memo[0] = true
max1 = 0
ans = 0
while !que.empty?
  q = que.shift
  graph[q[0]].each do |g|
    next if memo[g]
    que << [g, q[1] + 1]
    memo[g] = true
  end
  max1 = [max1, q[1]].max
end
max2 = 0
que << [N1 + N2 - 1, 0]
memo = {}
memo[N1 + N2 - 1] = true
while !que.empty?
  q = que.shift
  graph[q[0]].each do |g|
    next if memo[g]
    que << [g, q[1] + 1]
    memo[g] = true
  end
  max2 = [max2, q[1]].max
end
puts max1 + max2 + 1
