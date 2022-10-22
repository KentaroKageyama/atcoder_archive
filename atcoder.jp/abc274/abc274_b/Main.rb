H, W = gets.split.map(&:to_i)
result = []
grid = []
H.times do |i|
    grid << gets.chomp
end
W.times do |i|
    count = 0
    H.times do |j|
        count += 1 if grid[j][i] == "#"
    end
    result << count
end
puts result.join(" ")