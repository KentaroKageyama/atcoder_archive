N = gets.to_i
nums = gets.split.map(&:to_i)
count = 1
l_r = ""
(N - 1).times do |i|
    if nums[i] > nums[i + 1]
        if l_r == "<"
            count += 1
            l_r = ""
        elsif l_r == ""
            l_r = ">"
        end
    elsif nums[i] < nums[i + 1]
        if l_r == ">"
            count += 1
            l_r = ""
        elsif l_r == ""
            l_r = "<"
        end
    end
end
puts count