N, X, Y = gets.split.map(&:to_i)
graph = Array.new(N){Array.new()}
(N - 1).times do |i|
    graph[i] << i + 1
    graph[-(i + 1)] << N - i - 2
end
graph[X - 1] << Y - 1
graph[Y - 1] << X - 1
ans = [0] * N
count = 0
N.times do |i|
    que = [[i,1]]
    memo = {}
    memo[i] = 1
    while !que.empty?
        q = que.shift
        from = q[0]
        cnt = q[1]
        graph[from].each do |to|
            next if memo[to] == 1
            ans[cnt] += 1
            que << [to, cnt + 1]
            memo[to] = 1
        end
    end
end
ans.shift
puts ans.map{|a| a / 2}