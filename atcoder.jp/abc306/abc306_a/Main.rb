N = gets.to_i
S = gets.chomp
ans = []
N.times do |i|
  2.times{ ans << S[i] }
end
puts ans.join
