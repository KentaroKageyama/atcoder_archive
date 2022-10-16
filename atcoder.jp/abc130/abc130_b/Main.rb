N, X = gets.split.map(&:to_i)
bounds = gets.split.map(&:to_i)
now = 0
count = 1
bounds.each do |bound|
    now += bound
    count += 1 if now <= X
end
puts count
    