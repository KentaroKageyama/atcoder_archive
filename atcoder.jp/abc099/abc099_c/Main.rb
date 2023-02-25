N = gets.to_i
dp = [Float::INFINITY] * N
dp.unshift(0)
N.times do |i|
    dp[i + 1] = [dp[i] + 1, dp[i + 1]].min
    j = 1
    while i + 6 ** j <= N
        dp[i + 6 ** j] = [dp[i] + 1, dp[i + 6 ** j]].min
        j += 1
    end
    j = 1
    while i + 9 ** j <= N
        dp[i + 9 ** j] = [dp[i] + 1, dp[i + 9 ** j]].min
        j += 1
    end
end
puts dp.last
        