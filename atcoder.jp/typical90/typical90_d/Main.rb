H, W = gets.split.map(&:to_i)
grid = []
w_sum = [0] * H
h_sum = [0] * W
H.times do |i|
    tmp = gets.split.map(&:to_i)
    tmp.each.with_index do |n, i|
        h_sum[i] += n
    end
    w_sum[i] += tmp.sum
    grid << tmp
end
H.times do |i|
    ary = []
    W.times do |j|
        ary << w_sum[i] + h_sum[j] - grid[i][j]
    end
    puts ary.join(" ")
end