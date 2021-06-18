N = gets.to_i
nums = gets.split(" ").map!(&:to_i)
ans_nums = []
N.times { |i| ans_nums << i + 1 }

if nums.sort == ans_nums
    puts "Yes"
else
    puts "No"
end