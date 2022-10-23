H, W = gets.split.map(&:to_i)
grid = []
H.times do
    line = gets.chomp
    grid << line unless line == "." * W
end
delete_v = []
W.times do |i|
    v_flg = true
    grid.each do |g|
        v_flg &= g[i] == "."
    end
    if v_flg
        delete_v << i
    end
end
grid.each do |g|
    c_ary = g.chars
    c_ary.delete_if.with_index{|c, i| delete_v.include?(i)}
    puts c_ary.join
end