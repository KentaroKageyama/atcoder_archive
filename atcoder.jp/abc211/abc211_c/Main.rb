str = gets.chomp
check_str = "chokudai"
n = str.length
c_n = check_str.length
dp = []

(c_n + 1).times { dp << [0] * (n + 1) }
n.times { |i| dp[0][i + 1] = 1 }

c_n.times do |i|
    n.times do |j|
        if str[j] == check_str[i]
            dp[i + 1][j + 1] = dp[i][j + 1] + dp[i + 1][j]
        else
            dp[i + 1][j + 1] = dp[i + 1][j]
        end
    end
end

puts dp[c_n][n] % (10 ** 9 + 7)
