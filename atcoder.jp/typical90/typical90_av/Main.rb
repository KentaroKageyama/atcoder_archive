N, K = gets.split.map(&:to_i)
points = []
N.times do |i|
    a, b = gets.split.map(&:to_i)
    points << a - b
    points << b
end
puts points.sort.reverse[0..K - 1].sum