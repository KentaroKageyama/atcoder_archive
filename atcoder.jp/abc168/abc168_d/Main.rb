N, M = gets.split.map(&:to_i)
rooms = Array.new(N){Array.new()}
M.times do |i|
    a, b = gets.split.map(&:to_i)
    a -= 1; b -= 1
    rooms[a] << b
    rooms[b] << a
end
que = [0]
ans = [-1] * N
while !que.empty?
    from = que.shift
    rooms[from].each do |to|
        next if ans[to] != -1
        que.push(to)
        ans[to] = from
    end
end
puts "Yes"
(N - 1).times do |i|
    i += 1
    puts ans[i] + 1
end