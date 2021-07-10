N = gets.to_i
nums = gets.split(" ").map!(&:to_i).sort
result = 1

N.times do |i|
    result = result * (nums[i] - i) % 1000000007
end

puts result