N = gets.to_i
P = gets.split.map(&:to_i)
results = Array.new(N, 0)
N.times do |i|
  results[(P[i] - 1 - i) % N] += 1
  results[(P[i] - i) % N] += 1
  results[(P[i] + 1 - i) % N] += 1
end
puts results.max