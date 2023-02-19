N, M = gets.split.map(&:to_i)
aa = gets.split.map(&:to_i)
bb = gets.split.map(&:to_i)
sum = 0
bb.each do |i|
    sum += aa[i - 1]
end
puts sum