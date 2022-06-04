N, K = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

num_ary = Array.new(K){[]}

K.times do |i|
    j = 0
    while i + K * j < N
        num_ary[i] << nums[i + K * j]
        j += 1
    end
end

num_ary.each do |ary|
    ary.sort!
end

result_nums = []
i = 0
break_flg = false
while true
    num_ary.each do |ary|
        if ary[i].nil?
            break_flg = true
            break
        end
        result_nums << ary[i]
    end
    break if break_flg
    i += 1
end

if result_nums.sort == result_nums
    puts "Yes"
else
    puts "No"
end