N, X = gets.split.map(&:to_i)
results = []
sum = 0
N.times do |i|
    break if i + 1 > X
    a, b = gets.split.map(&:to_i)
    sum += a + b
    results << sum + b * (X - 1 - i)
end
puts results.min