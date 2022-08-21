N, M, T = gets.split.map(&:to_i)
times = gets.split.map(&:to_i)
bonuses = {}
M.times do
    x, y = gets.split.map(&:to_i)
    bonuses[x] = y
end
r_time = T
(N - 1).times do |i|
    r_time -= times[i]
    if r_time <= 0
        puts "No"
        exit
    end
    r_time += bonuses[i + 2].to_i
end
puts "Yes"