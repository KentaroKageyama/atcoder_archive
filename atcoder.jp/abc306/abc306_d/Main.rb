N = gets.to_i
dp = Array.new(N + 1){Array.new(2, 0)}
N.times do |i|
  x, y = gets.split.map(&:to_i)
  case x
  when 0
    dp[i + 1][0] = [dp[i][0], dp[i][1] + y, dp[i][0] + y].max
    dp[i + 1][1] = dp[i][1]
  when 1
    dp[i + 1][1] = [dp[i][1], dp[i][0] + y].max
    dp[i + 1][0] = dp[i][0]
  end
end
puts dp[-1].max