N, K = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
n = N
cnt = 0
while true
    cnt += 1
    n = n - K
    break if n <= 0
    n += 1
end
puts cnt