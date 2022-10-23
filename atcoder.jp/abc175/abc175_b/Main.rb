N = gets.to_i
lines = gets.split.map(&:to_i)
tri = lines.combination(3).to_a
count = 0
tri.each do |t|
    if (t[0] + t[1] > t[2]) && (t[1] + t[2] > t[0]) && (t[0] + t[2] > t[1])
        next unless t.uniq.size == 3
        count += 1
    end
end
puts count
    