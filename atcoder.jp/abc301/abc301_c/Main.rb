S = gets.chomp.chars
T = gets.chomp.chars
s_atcoder_cnt = 0
t_atcoder_cnt = 0
s_at_cnt = 0
t_at_cnt = 0
s_tmp = []
t_tmp = []
S.size.times do |i|
    next if S[i] != "@" && S[i] == T[i]
    if S[i] == "@"
        s_at_cnt += 1
    else
        s_tmp << S[i]
    end
    if T[i] == "@"
        t_at_cnt += 1
    else
        t_tmp << T[i]
    end
end
s_tmp = s_tmp.tally
t_tmp = t_tmp.tally
s_rem_cnt = 0
t_rem_cnt = 0
("a".."z").to_a.each do |alp|
    next if s_tmp[alp].nil? && t_tmp[alp].nil?
    if s_tmp[alp].nil?
        unless ["a", "t", "c", "o", "d", "e", "r"].include?(alp)
            puts "No"
            exit
        end
        t_rem_cnt += t_tmp[alp]
    elsif t_tmp[alp].nil?
        unless ["a", "t", "c", "o", "d", "e", "r"].include?(alp)
            puts "No"
            exit
        end
        s_rem_cnt += s_tmp[alp]
    else
        next if s_tmp[alp] - t_tmp[alp] == 0
        unless ["a", "t", "c", "o", "d", "e", "r"].include?(alp)
            puts "No"
            exit
        end
        if s_tmp[alp] > t_tmp[alp]
            s_rem_cnt += s_tmp[alp] - t_tmp[alp]
        else
            t_rem_cnt += t_tmp[alp] - s_tmp[alp]
        end
    end
end
if s_rem_cnt <= t_at_cnt && t_rem_cnt <= s_at_cnt
    puts "Yes"
else
    puts "No"
end