X, Y, Z = gets.split.map(&:to_i)
S = gets.chomp
aA = []
cnt = 1
(S.length - 1).times do |i|
    if S[i] != S[i + 1]
        aA << cnt
        cnt = 0
    end
    cnt += 1
end
aA << cnt
if S[0] == "A"
    aA.unshift(0)
end
ans = 0
cl_flg = false
a_flg = true
dp = Array.new(aA.size + 1){Array.new(2, Float::INFINITY)}
dp[0][0] = 0
dp[0][1] = Z
aA.each.with_index do |cnt, i|
    if cnt == 0
        a_flg = !a_flg
        dp[1][0] = dp[0][0]
        dp[1][1] = dp[0][1]
        next
    end
    on = []
    off = []
    if a_flg
        # cl on
        on << Y * cnt + dp[i][1]
        off << X * cnt + Z + dp[i][1]
        # cl off
        on << Y * cnt + Z + dp[i][0]
        off << X * cnt + dp[i][0]
    else
        # cl on
        on << X * cnt + dp[i][1]
        off << Y * cnt + Z + dp[i][1]
        # cl off
        on << X * cnt + Z + dp[i][0]
        off << Y * cnt + dp[i][0]
    end
    dp[i + 1][0] = off.min
    dp[i + 1][1] = on.min
    a_flg = !a_flg
end
puts dp[-1].min