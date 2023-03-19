N = gets.to_i
aa = gets.split.map(&:to_i)
result = []
aa.each do |a|
    result << a if a.even?
end
puts result.join(" ")