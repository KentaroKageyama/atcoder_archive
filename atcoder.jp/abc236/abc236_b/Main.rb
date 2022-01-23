N = gets.to_i
nums = gets.split.map(&:to_i)
result = nums.group_by(&:itself).transform_values(&:size)
result.each do |k, v|
    if v == 3
        puts k
    end
end