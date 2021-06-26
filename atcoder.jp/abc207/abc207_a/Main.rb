nums = gets.split(" ").map!(&:to_i).sort.reverse
puts nums[0] + nums[1]