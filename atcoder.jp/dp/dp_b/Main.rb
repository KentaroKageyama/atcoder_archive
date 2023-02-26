N, K = gets.split.map(&:to_i)
hh = gets.split.map(&:to_i)
dp = [Float::INFINITY] * N
dp[0] = 0
N.times do |i|
    K.times do |j|
        j += 1
        break if i + j >= N
        dp[i + j] = [dp[i + j], (hh[i] - hh[i + j]).abs + dp[i]].min
    end
end
puts dp.last
