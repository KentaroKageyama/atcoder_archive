N, M = gets.split.map(&:to_i)
nodes = {}
M.times do |i|
    a, b = gets.split.map(&:to_i)
    if a > b
        if nodes[a].nil?
            nodes[a] = true
        else
            nodes[a] = false if nodes[a]
        end
    end
    if b > a
        if nodes[b].nil?
            nodes[b] = true
        else
            nodes[b] = false if nodes[b]
        end
    end
end
count = 0
nodes.each{|k, v| count += 1 if v}
puts count