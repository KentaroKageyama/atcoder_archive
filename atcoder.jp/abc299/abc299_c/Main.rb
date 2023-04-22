N = gets.to_i
S = gets.chomp
ans = 0
d_cnt = 0
N.times do |i|
    if S[i] == "o"
        d_cnt += 1
    else
        ans = [ans, d_cnt].max
        d_cnt = 0
    end
end
ans = [ans, d_cnt].max
if ans == 0 || ans == N
    puts -1
else
    puts ans
end