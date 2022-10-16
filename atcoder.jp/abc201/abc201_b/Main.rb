N = gets.to_i
mountains = {}
heights = []
N.times do |i|
    s, t = gets.split
    mountains[t.to_i] = s
    heights << t.to_i
end
max2 = heights.max(2)
puts mountains[max2[-1]]