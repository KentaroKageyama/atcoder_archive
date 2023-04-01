n, m = gets.chomp.split.map(&:to_i)
ans = Float::INFINITY
(1..n).each do |i|
  x = (m + i - 1) / i
  if x <= n
    ans = [ans, i * x].min
  end
  break if i > x
end
puts ans == Float::INFINITY ? "-1" : ans
