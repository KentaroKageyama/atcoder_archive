N = gets.to_i
slimes = gets.split.map(&:to_i)
slimes << -1
count = 0
ans = 0
N.times do |i|
    count += 1
    if slimes[i] != slimes[i + 1]
        ans += count / 2
        count = 0
    end
end
puts ans    
