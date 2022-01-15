N = gets.to_i
d = gets.split.map(&:to_i)
height = d[0]
(N - 1).times do |i|
    if d[i] < d[i + 1]
        height = d[i + 1]
    else
        break
    end
end

puts height