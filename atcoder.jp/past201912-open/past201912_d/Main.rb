N = gets.to_i
nums = []
N.times { nums << gets.to_i }
dup = nums.group_by{|i| i}.reject{|k,v| v.one?}.keys
non = 0
nums.delete_at(nums.index(*dup)) if !dup.empty?
nums.sort!
(1..N).each do |i|
    if nums[i - 1] != i
        non = i
        break
    end
end
puts non == 0 ? "Correct" : "#{dup.join} #{non}"