N, M = gets.split.map(&:to_i)
C = gets.chomp.split
D = gets.chomp.split
P = gets.split.map(&:to_i)
prices = {}
D.each.with_index(1) do |d, i|
  prices[d] = P[i]
end
ans = 0
N.times do |i|
  if prices[C[i]]
    ans += prices[C[i]]
  else
    ans += P[0]
  end
end
puts ans