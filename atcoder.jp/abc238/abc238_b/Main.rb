N = gets.to_i
nums = gets.split.map(&:to_i)
cuts = [0]
angle = 0
nums.each do |n|
    angle = (angle + n) % 360
    cuts << angle
end

cuts.sort!
cuts << 360
max = 0

(N + 1).times do |i|
    max = [(cuts[i + 1] - cuts[i]), max].max
end

puts max