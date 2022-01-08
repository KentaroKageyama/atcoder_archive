N, K = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)


mem = [0] * N
(0..(K - 1)).each { |i| mem[nums[i]] = 1 }
puts point = mem.index(1)

((K + 1)..N).each do |i|
    mem[nums[i - 1]] = 1
    if point > nums[i - 1]
        puts point
    else
        i = point
        while i < N
            i += 1
            if mem[i] == 1
                puts point = i
                break
            end
        end
    end
end