N, K, D = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
dp = Array.new(N+1){Array.new(K+1){Array.new(D, -1)}}
dp[0][0][0] = 0
N.times do |i|
    (K + 1).times do |j|
        D.times do |k|
            next if dp[i][j][k] == -1
            dp[i+1][j][k] = [dp[i+1][j][k], dp[i][j][k]].max
            dp[i+1][j+1][(k+nums[i])%D] = [dp[i+1][j+1][(k+nums[i])%D], dp[i][j][k] + nums[i]].max  if j != K
        end
    end
end
puts dp[N][K][0]