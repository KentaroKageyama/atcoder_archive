N = gets.to_i
points = []

N.times do
    points << gets.split(" ").map!(&:to_i)
end

count = 0
points.combination(3).each do |a, b, c|
    count += 1 if (b[0] - a[0]) * (c[1] - a[1]) - (c[0] - a[0]) * (b[1] - a[1]) != 0
end

puts count