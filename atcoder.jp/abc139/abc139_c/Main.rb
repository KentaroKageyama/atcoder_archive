N = gets.to_i
nums = gets.split.map(&:to_i)
max = 0
count = 0
nums << Float::INFINITY
N.times do |i|
    if nums[i] < nums[i + 1]
        max = [max, count].max
        count = 0
    else
        count += 1
    end
end
puts max