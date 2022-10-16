N = gets.to_i
T, A = gets.split.map(&:to_i)
heights = gets.split.map(&:to_i)
results = {}
a_subs = []
N.times do |i|
    a_sub = (A - (T - heights[i] * 0.006)).abs
    results[a_sub] = i + 1
    a_subs << a_sub
end
puts results[a_subs.min]