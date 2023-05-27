N, M, H, K = gets.split.map(&:to_i)
S = gets.chomp
hp = H
pos = [0, 0]
items = {}
M.times do |i|
    item = gets.split.map(&:to_i)
    items[item] = true
end
cnt = 0
N.times do |i|
    case S[i]
    when "R"
        pos[0] += 1
    when "U"
        pos[1] += 1
    when "D"
        pos[1] -= 1
    when "L"
        pos[0] -= 1
    end
    hp -= 1
    break if hp < 0
    if items[pos] && hp < K
        hp = K
        items[pos] = false
    end
    cnt += 1
end
puts cnt == N ? "Yes" : "No"