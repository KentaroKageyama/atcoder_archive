N = gets.to_i
aa = gets.split.map(&:to_i).sort
sum = 0
N.times do |i|
    i = (i + 1) * -2
    sum += aa[i]
end
puts sum