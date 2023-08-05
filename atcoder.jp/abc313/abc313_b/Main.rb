N, M = gets.split.map(&:to_i)
bb = []
M.times do |i|
  a, b = gets.split.map(&:to_i)
  bb << b
end
bb = bb.tally
ans = []
N.times do |i|
  i += 1
  if bb[i].nil?
    ans << i
  end
end
if ans.size > 1
  puts -1
else
  puts ans.join
end