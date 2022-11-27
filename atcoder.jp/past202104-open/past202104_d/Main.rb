N, K = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
cs = [0]
N.times do |i|
    cs << cs[i] + nums[i]
end
(0..(N - K)).each do |x|
    puts cs[x + K] - cs[x]
end
