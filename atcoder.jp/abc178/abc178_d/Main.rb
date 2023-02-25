MOD = 10 ** 9 + 7
S = gets.to_i
dp = [0] * S
dp.unshift(1)
S.times do |i|
    ((i + 3)..S).each do |j|
        dp[j] += dp[i]
    end
end
puts dp.last % MOD