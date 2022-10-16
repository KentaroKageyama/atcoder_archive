N, K = gets.split.map(&:to_i)
trees = []
N.times do |i|
    trees << gets.to_i
end
trees.sort!
min = Float::INFINITY
(0..(N - K)).each do |i|
    result = trees[i + K - 1] - trees[i]
    min = [min, result].min
end
puts min