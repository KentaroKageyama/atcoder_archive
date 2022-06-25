N = gets.to_i
s = gets.chomp.chars.map(&:to_i)
w_s = gets.split.map(&:to_i)
w_s_ary = []

w_s.each.with_index(0) do |w, i|
    w_s_ary << [w, s[i]]
end

ans = s.sum
w_s_ary = w_s_ary.sort
x = ans
w_s_ary.size.times do |i|
    if w_s_ary[i].last == 0
        x += 1
    elsif w_s_ary[i].last == 1
        x -= 1
    end
    if i != N - 1
        ans = [ans, x].max if w_s_ary[i].first != w_s_ary[i + 1].first
    else
        ans = [ans, x].max
    end
end

puts ans

