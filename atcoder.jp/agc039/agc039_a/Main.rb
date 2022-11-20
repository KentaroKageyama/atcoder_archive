S = gets.chomp
K = gets.to_i
s2 = S * 2
def change_count(s)
    comp = []
    count = 0
    result = 0
    (s.length - 1).times do |i|
        count += 1
        if s[i] != s[i + 1]
            result += count / 2
            count = 0
        end
    end
    count += 1
    result += count / 2
    return result
end
c_count_s = change_count(S)
c_count_s2 = change_count(s2)
if S.chars.uniq.length == 1
    puts S.length * K / 2
else
    if K == 1
        puts c_count_s
    else
        puts c_count_s + (c_count_s2 - c_count_s) * (K - 1)
    end
end