n, a, b = gets.split(" ").map!(&:to_i)
result = 0
(1..n).each do |num|
    d_sum = num.to_s.split("").map!(&:to_i).sum
    if a <= d_sum && b >= d_sum
        result += num
    end
end

puts result