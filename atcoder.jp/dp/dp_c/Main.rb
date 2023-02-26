N = gets.to_i
dp = Array.new(N + 1){Array.new(3, 0)}
N.times do |i|
    a, b, c = gets.split.map(&:to_i)
    dp[i].each.with_index do |abc, j|
        case j
        when 0
            dp[i + 1][1] = [dp[i + 1][1], dp[i][j] + b].max
            dp[i + 1][2] = [dp[i + 1][2], dp[i][j] + c].max
        when 1
            dp[i + 1][0] = [dp[i + 1][0], dp[i][j] + a].max
            dp[i + 1][2] = [dp[i + 1][2], dp[i][j] + c].max
        when 2
            dp[i + 1][0] = [dp[i + 1][0], dp[i][j] + a].max
            dp[i + 1][1] = [dp[i + 1][1], dp[i][j] + b].max
        end
    end
end
puts dp.last.max