N, W = gets.split.map(&:to_i)
dp = Array.new(N + 1){Array.new(W + 1, -1)}
dp[0][0] = 0
N.times do |i|
    w, v = gets.split.map(&:to_i)
    W.times do |j|
        next if dp[i][j] == -1
        if j + w <= W
            dp[i + 1][j + w] = [dp[i][j] + v, dp[i + 1][j + w]].max
        end
        dp[i + 1][j] = [dp[i][j], dp[i + 1][j]].max
    end
end
puts dp[-1].compact.max