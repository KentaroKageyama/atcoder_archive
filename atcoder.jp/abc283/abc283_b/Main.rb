N = gets.to_i
nums = gets.split.map(&:to_i)
Q = gets.to_i
Q.times do |i|
    line = gets.split.map(&:to_i)
    case line[0]
    when 1
        k = line[1]
        x = line[2]
        nums[k - 1] = x
    when 2
        k = line[1]
        puts nums[k - 1]
    end
end