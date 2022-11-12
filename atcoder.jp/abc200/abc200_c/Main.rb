N = gets.to_i
nums = gets.split.map(&:to_i).sort
cnt = {}
ans = 0
N.times do |i|
    rem = nums[i] % 200
    ans += cnt[rem].to_i
    cnt[rem] ||= 0
    cnt[rem] += 1
end
puts ans