N = gets.to_i
P = gets.split.map(&:to_i)
result = []
N.times do |i|
    if P[i..-1] == P[i..-1].sort
        result = P[0..i - 2] if i != 1
        tmp = P[i - 1..-1].sort
        min_next = tmp[tmp.index(P[i - 1]) - 1]
        result << min_next
        tmp = P[i..-1].clone
        tmp.delete(min_next)
        tmp << P[i - 1]
        result += tmp.sort.reverse
        break
    end
end
puts result.join(" ")