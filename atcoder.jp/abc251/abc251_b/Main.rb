N, W = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
result_nums = []
3.times do |i|
    i += 1
    temp = nums.combination(i).to_a
    temp.each do |t|
        sum = t.sum
        result_nums << sum if sum <= W
    end
end
puts result_nums.uniq.length