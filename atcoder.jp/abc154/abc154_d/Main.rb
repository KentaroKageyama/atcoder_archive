N, K = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
n_nums = nums.map{|n| n == 1 ? 1 : (n * (n + 1) / 2) / n.to_f}
max = 0
sum = 0
n_nums.length.times do |i|
    sum += n_nums[i]
    sum -= n_nums[i - K] if i >= K
    max = [max, sum].max
end
puts max