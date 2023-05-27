N, M = gets.split.map(&:to_i)
check = Array.new(N){Array.new(N, 0)}
aa = []
M.times do |i|
    aa << gets.split.map(&:to_i)
end
M.times do |i|
    a = aa[i]
    (N - 1).times do |j|
        check[a[j] - 1][a[j + 1] - 1] = 1
        check[a[j + 1] - 1][a[j] - 1] = 1
    end
end
ans = 0
N.times do |i|
    ans += check[i].count(0)
end
puts (ans - N) / 2