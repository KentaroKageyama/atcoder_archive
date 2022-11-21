N, M = gets.split.map(&:to_i)
h_s = gets.split.map(&:to_i)
ten_s = Array.new(N){Array.new([])}
M.times do |i|
    a, b = gets.split.map(&:to_i)
    ten_s[a - 1] << b
    ten_s[b - 1] << a
end
ans = 0
ten_s.each.with_index do |ten, i|
    check = true
    ten.each do |t|
        check &= h_s[i] > h_s[t - 1]
    end
    ans += 1 if check
end
puts ans