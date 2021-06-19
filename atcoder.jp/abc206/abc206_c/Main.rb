N = gets.to_i
nums = gets.split(" ").map!(&:to_i).sort
count = 0
dup = []
nums << -1

N.times do |i|
    if nums[i] == nums[i + 1]
        count += 1
    else
        if count >= 1
            dup << count + 1
        end
        count = 0
    end
end
a = 0

dup.each do |d|
    a += d * (d - 1) / 2
end

puts N * (N - 1) / 2 - a