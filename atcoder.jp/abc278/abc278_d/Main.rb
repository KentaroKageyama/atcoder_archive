N = gets.to_i
nums = gets.split.map(&:to_i)
Q = gets.to_i
all = -1
memo = {}
Q.times do
    line = gets.split.map(&:to_i)
    case line[0]
    when 1
        x = line[1]
        all = x
        memo = {}
    when 2
        i = line[1]
        x = line[2]
        if all != -1 && memo[i] != 1
            nums[i - 1] = all + x
            memo[i] = 1
        else
            nums[i - 1] = nums[i - 1] + x
        end
    when 3
        i = line[1]
        if memo[i] == 1 
            puts nums[i - 1]
        else
            if all == -1
                puts nums[i - 1]
            else
                puts all
            end
        end
    end
end