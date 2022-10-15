N = gets.to_i
max = 0
result = 1
(1..N).each do |n|
    count = 0
    tmp = n
    while true
        break if tmp % 2 != 0
        tmp /= 2
        count += 1
    end
    result = n if count > max
    max = [count, max].max
end
puts result