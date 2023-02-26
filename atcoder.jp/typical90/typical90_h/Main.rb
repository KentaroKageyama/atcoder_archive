MOD = 10 ** 9 + 7
N = gets.to_i
S = gets.chomp
str = "atcoder"
str_cnt = {}
str.length.times do |i|
    str_cnt[str[i]] = 0
end
str_cnt[str[0]] = 1
result = 0
N.times do |i|
    str.length.times do |j|
        if str.length - 1 == j
            result += str_cnt[str[j]] if S[i] == str[j]
        elsif S[i] == str[j]
            str_cnt[str[j + 1]] += str_cnt[str[j]]
        end
    end
end
puts result % MOD