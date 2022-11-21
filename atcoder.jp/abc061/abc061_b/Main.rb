N, M = gets.split.map(&:to_i)
cities = Array.new(N){Array.new([])}
M.times do
    a, b = gets.split.map(&:to_i)
    cities[a - 1] << b
    cities[b - 1] << a
end
cities.each do |city|
    puts city.size
end