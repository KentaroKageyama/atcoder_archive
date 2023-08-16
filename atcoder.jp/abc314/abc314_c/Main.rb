N, M = gets.split.map(&:to_i)
S = gets.chomp.chars
C = gets.split.map(&:to_i)
colors = Array.new(M){Array.new()}
N.times do |i|
  colors[C[i] - 1] << S[i]
end
colors.map! do |color|
  color.rotate!(-1)
end
ans = []
N.times do |i|
  ans << colors[C[i] - 1].shift
end
puts ans.join