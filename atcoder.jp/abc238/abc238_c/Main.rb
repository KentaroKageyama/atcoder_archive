N = gets.chomp
result = 0
degits = N.length
(degits - 1).times do |i|
    a = 9 * (10 ** i) 
    result += a * (a + 1) / 2
end
a = N.to_i - ("9" * (degits - 1)).to_i
result += a * (a + 1) / 2

puts result % 998244353