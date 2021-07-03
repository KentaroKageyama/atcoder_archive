N = gets.to_i
nums = gets.split(" ").map!(&:to_i)

if nums.max < nums.sum - nums.max
    puts "Yes"
else
    puts "No"
end