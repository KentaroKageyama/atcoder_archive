S = gets.chomp.chars
uniq = S.uniq
def operation(c, s_ary, count = 0)
    return count if s_ary.uniq.size == 1
    count += 1
    new_s_ary = []
    (s_ary.length - 1).times do |i|
        if s_ary[i] == c || s_ary[i + 1] == c
            new_s_ary << c
        else
            new_s_ary << s_ary[i]
        end
    end
    return operation(c, new_s_ary, count)
end
ans_min = Float::INFINITY 
uniq.each do |c|
    ans_min = [ans_min, operation(c, S)].min
end
puts ans_min