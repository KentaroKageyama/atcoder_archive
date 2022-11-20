S = gets.chomp
groups = S.scan(/R*L*/)
result = [0] * S.length
now = 0
(groups.size - 1).times do |i|
    r_count = groups[i].count("R")
    l_count = groups[i].count("L")
    r_count.times do |i|
        if (i + 1) == r_count
            result[now] = l_count / 2
            result[now] += r_count <= 2 ? 1 : r_count / 2 + r_count % 2
        end
        now += 1
    end
    l_count.times do |i|
        if i == 0
            result[now] = r_count / 2
            result[now] += l_count <= 2 ? 1 : l_count / 2 + l_count % 2
        end
        now += 1
    end
end
puts result.join(" ")