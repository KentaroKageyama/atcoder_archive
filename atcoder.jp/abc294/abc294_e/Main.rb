L, N1, N2 = gets.split.map(&:to_i)
n1 = []
n2 = []
N1.times do |i|
    n1 << gets.split.map(&:to_i)
end
N2.times do |i|
    n2 << gets.split.map(&:to_i)
end
i_1 = 0
i_2 = 0
index = 0
ans = 0
while i_1 < N1 && i_2 < N2
    if n1[i_1][1] == n2[i_2][1]
        index += n1[i_1][1]
        ans += n1[i_1][1] if n1[i_1][0] == n2[i_2][0]
        i_1 += 1
        i_2 += 1
    elsif n1[i_1][1] < n2[i_2][1]
        index += n1[i_1][1]
        ans += n1[i_1][1] if n1[i_1][0] == n2[i_2][0]
        n2[i_2][1] = n2[i_2][1] - n1[i_1][1]
        i_1 += 1
    elsif n1[i_1][1] > n2[i_2][1]
        index += n1[i_1][1]
        ans += n2[i_2][1] if n1[i_1][0] == n2[i_2][0]
        n1[i_1][1] = n1[i_1][1] - n2[i_2][1]
        i_2 += 1
    end
end
puts ans