N, K = gets.split(" ").map!(&:to_i)
nums = gets.split(" ").map!(&:to_i)
nums_s = [0]
count = 0
nums.size.times { |i| nums_s[i + 1] = nums_s[i] + nums[i] }
hash = {}
nums_s.each do |s|
    count += hash[s - K] if hash[s - K]
    hash[s] ? hash[s] += 1 : hash[s] = 1
end
puts count