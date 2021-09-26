strs = []
3.times do
    strs << gets.chomp
end

t = gets.chomp
result = ""

t.length.times do |i|
    result +=  strs[t[i].to_i - 1]
end

puts result