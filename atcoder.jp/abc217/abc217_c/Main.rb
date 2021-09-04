N = gets.to_i
nums = gets.split(" ").map!(&:to_i)
result_nums = [0] * N


N.times do |i|
    result_nums[nums[i] - 1] = i + 1 
end

puts result_nums.join(" ")