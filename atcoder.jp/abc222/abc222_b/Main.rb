N, P = gets.split(" ").map!(&:to_i)
nums = gets.split(" ").map!(&:to_i)
count = 0

N.times do |i|
    count += 1 if nums[i] < P
end
    
puts count