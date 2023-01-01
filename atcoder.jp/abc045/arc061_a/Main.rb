S = gets.chomp
if S.length == 1
    puts S
    exit
end
def sum_calc(bit)
    bit = bit.rjust(S.length - 1, '0') + '1'
    sum = 0
    tmp = ""
    S.length.times do |i|
        tmp += S[i]
        if bit[i] == '1'
            sum += tmp.to_i
            tmp = ""
        end
    end
    return sum
end
ans = 0
(2**(S.length - 1)).times do |i|
    ans += sum_calc(i.to_s(2))
end
puts ans