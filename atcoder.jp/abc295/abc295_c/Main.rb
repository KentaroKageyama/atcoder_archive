N = gets.to_i
aa = gets.split.map(&:to_i)
ans = 0
aa.tally.each do |k, v|
    ans += v / 2
end
puts ans