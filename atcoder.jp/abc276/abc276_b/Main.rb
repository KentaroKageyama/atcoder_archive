N, M = gets.split.map(&:to_i)
results = Array.new(N){Array.new()}
M.times do |i|
    a, b = gets.split.map(&:to_i)
    results[a - 1] << b
    results[b - 1] << a
end
results.each do |r|
    puts "#{r.size} #{r.sort.join(" ")}"
end