N = gets.to_i
records = gets.split.map(&:to_i)
nodes = {}
nodes[1] = 0
records.each.with_index(1) do |record, i|
    nodes[i * 2] = nodes[record] + 1
    nodes[i * 2 + 1] = nodes[record] + 1
end
(2 * N + 1).times do |i|
    i += 1
    puts nodes[i]
end