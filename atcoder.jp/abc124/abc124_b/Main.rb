N = gets.to_i
max = 0
count = 0
ryokans = gets.split.map(&:to_i)
ryokans.each do |r|
    if max <= r
        count += 1
        max = r
    end
end
puts count
    