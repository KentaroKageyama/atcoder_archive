S = gets.chomp
b_cnt = 0
ans = 0
S.length.times do |i|
    if S[i] == "B"
        b_cnt += 1
        ans += S.length - (i + 1)
    end
end
if b_cnt == 0
    puts 0
else
    puts ans - (0..b_cnt - 1).inject(:+)
end
        