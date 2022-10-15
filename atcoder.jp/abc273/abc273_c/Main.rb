N = gets.to_i
nums = gets.split.map(&:to_i)
nums_s_u = nums.sort.uniq
nums_u_size = nums_s_u.size
nums_index = {}
nums_s_u.each.with_index{|n, i| nums_index[n] = i}
result = {}
nums.each do |n|
    count = nums_u_size - (nums_index[n] + 1)
    result[count] ||= 0
    result[count] += 1
end
N.times do |i|
    if result[i].nil?
        puts 0
    else
        puts result[i]
    end
end
