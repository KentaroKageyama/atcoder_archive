H, W, K = gets.split.map(&:to_i)
@grid = []
H.times do |i|
    @grid << gets.chomp
end
def check_k(h_bit, w_bit)
    result = 0
    h_bit.to_i.digits.each.with_index do |h_b, i|
        next if h_b == 0
        w_cnt = 0
        w_bit.to_i.digits.each.with_index do |w_b, j|
            w_cnt += 1 if w_b == 1 && @grid[i][j] == "#"
        end
        result += @grid[i].count("#") - w_cnt
    end
    result == K
end
ans = 0
(2 ** H).times do |i|
    (2 ** W).times do |j|
        ans += 1 if check_k(i.to_s(2), j.to_s(2))
    end
end
puts ans