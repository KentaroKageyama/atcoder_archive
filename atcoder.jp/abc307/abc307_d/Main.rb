N = gets.to_i
S = gets.chomp
que = []
delete_range = []
temp = []
N.times do |i|
  case S[i]
  when "("
    que << i
  when ")"
    next if que.empty?
    delete_range << [que.pop, i]
  end
end
delete_range.sort!
ans = ""
pos = 0
delete_range.each do |d_r|
  if pos > d_r[0]
    next
  elsif pos == d_r[0]
    pos = d_r[1] + 1
    next
  end
  ans += S[pos..d_r[0] - 1]
  pos = d_r[1] + 1
end
if !delete_range.empty? && pos < N
  ans += S[pos..N - 1]
end
puts delete_range.empty? ? S : ans