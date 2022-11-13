S = gets.chomp.chars + [-1]
s_groups = []
group = ""
(S.length - 1).times do |i|
    group += S[i]
    if S[i] != S[i + 1]
        s_groups << group[0] + group.length.to_s
        group = ""
    end
end
puts s_groups.join