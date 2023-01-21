N, P, Q, R, S = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
result = []
pq = nums[P - 1..Q - 1]
rs = nums[R - 1..S - 1]
N.times do |i|
    next if P - 1 < i && i <= Q - 1
    next if R - 1 < i && i <= S - 1
    if i == P - 1
        result << rs
    elsif i == R - 1
        result << pq
    else
        result << nums[i]
    end
end
puts result.flatten.join(" ")