N = gets.to_i
aa = gets.split.map(&:to_i)
ans = [aa[0]]
(N - 1).times do |i|
    if (aa[i] - aa[i + 1]).abs == 1
        ans += [aa[i + 1]]
        next
    end
    if aa[i] < aa[i + 1]
        tmp = (aa[i]..aa[i + 1]).to_a
        ans += tmp[1..-1]
    else
        tmp = (aa[i + 1]..aa[i]).to_a.reverse
        ans += tmp[1..-1]
    end
end
puts ans.join(" ")