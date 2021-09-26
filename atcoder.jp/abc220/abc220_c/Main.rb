N = gets.to_i
nums = gets.split(" ").map!(&:to_i)
X = gets.to_i

total = nums.sum
result = X / total * nums.length
tmp_num = X / total * total

nums.each do |num|
    tmp_num += num
    result += 1

    if tmp_num  > X
        break
    end
end

puts result