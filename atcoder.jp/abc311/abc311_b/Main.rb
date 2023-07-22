N, D = gets.split.map(&:to_i)
S = []
N.times do |i|
  S << gets.chomp
end
count = 0
ans = []
D.times do |i|
  judge = true
  N.times do |j|
    judge &= S[j][i] == "o"
  end
  if judge
    count += 1
  else
    ans << count
    count = 0
  end
end
ans << count
puts ans.max