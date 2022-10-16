N, D = gets.split.map(&:to_i)
count = 0
N.times do |i|
    x, y = gets.split.map(&:to_i)
    count += 1 if Math.sqrt(x**2 + y**2) <= D
end
puts count