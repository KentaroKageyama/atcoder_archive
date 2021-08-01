N, M = gets.split(" ").map!(&:to_i)
nums_a = gets.split(" ").map!(&:to_i).sort
nums_b = gets.split(" ").map!(&:to_i).sort

i, j = 0, 0
min = Float::INFINITY

while true
    if min > (nums_a[i] - nums_b[j]).abs
        min = (nums_a[i] - nums_b[j]).abs
    end
    
    if nums_a[i] > nums_b[j]
        break if j == M - 1
        j += 1
    elsif nums_a[i] < nums_b[j]
        break if i == N - 1
        i += 1
    else
        break
    end
end

puts min