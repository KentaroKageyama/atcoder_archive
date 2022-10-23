bingo = []
3.times do
    bingo << gets.split.map(&:to_i)
end
N = gets.to_i
N.times do
    num = gets.to_i
    bingo.each.with_index do |b, i|
        b.each.with_index{|n, j| bingo[i][j] = 0 if bingo[i][j] == num}
    end
end
flg = false
3.times do |i|
    flg = true if bingo[i].all?(0)
    v_flg = true
    3.times do |j|
        v_flg &= bingo[j][i] == 0
    end
    flg = true if v_flg
end
flg = true if [bingo[0][0], bingo[1][1], bingo[2][2]].all?(0) || [bingo[0][2], bingo[1][1], bingo[2][0]].all?(0)
puts flg ? "Yes" : "No"