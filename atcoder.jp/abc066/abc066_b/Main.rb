S = gets.chomp
s = S[0..-2]
s_count = s.length / 2
(s.length / 2).times do |i|
    tmp_count = s_count - i
    s_1 = s[0..tmp_count - 1]
    s_2 = s[tmp_count..(tmp_count * 2 - 1)]
    if s_1 == s_2
        puts s_1.length * 2
        break
    end
end