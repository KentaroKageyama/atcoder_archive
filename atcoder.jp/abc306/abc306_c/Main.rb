N = gets.to_i
nums = gets.split.map(&:to_i)
f = {}
(N * 3).times do |i|
  f[nums[i]] ||= []
  f[nums[i]] << i
end
N.times do |i|
  f[i + 1] = f[i + 1][1]
end
ans = []
f.sort_by{|k, v| v}.each do |a|
  ans << a[0]
end
puts ans.join(" ")