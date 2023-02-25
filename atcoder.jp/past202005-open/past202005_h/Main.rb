N, L = gets.split.map(&:to_i)
x_a = gets.split.map(&:to_i)
t1, t2, t3 = gets.split.map(&:to_i)
x_h = {}
x_a.each do |x|
    x_h[x] = true
end
dp = [Float::INFINITY] * L
dp.unshift(0)
L.times do |i|
    base_time = 0
    base_time += t3 if x_h[i]
    # action1
    time = t1 + base_time
    dp[i + 1] = [dp[i + 1], dp[i] + time].min
    # action2
    if i + 2 > L
        sub = L - i
        time = t1 / 2 + t2 * (sub - 0.5) + base_time
        dp[i + sub] = [dp[i + sub], dp[i] + time.to_i].min
    else
        time = (t1 + t2) + base_time
        dp[i + 2] = [dp[i + 2], dp[i] + time].min
    end
    # action3
    if i + 4 > L
        sub = L - i
        time = t1 / 2 + t2 * (sub - 0.5) + base_time
        dp[i + sub] = [dp[i + sub], dp[i] + time.to_i].min
    else
        time = (t1 + t2 * 3) + base_time
        dp[i + 4] = [dp[i + 4], dp[i] + time].min
    end
end
puts dp.last