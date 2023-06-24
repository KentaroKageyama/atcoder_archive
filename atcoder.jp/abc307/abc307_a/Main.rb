N = gets.to_i
nums = gets.split.map(&:to_i)
ans = []
tmp = 0
(N * 7).times do |i|
  tmp += nums[i]
  if i % 7 == 6
    ans << tmp
    tmp = 0
  end
end
puts ans.join(" ")