H, W = gets.split.map(&:to_i)
grid_A = []
H.times do |i|
    grid_A << gets.chomp.chars
end
grid_B = []
H.times do |i|
    grid_B << gets.chomp.chars
end
cols_A = []
cols_B = []
W.times do |i|
    col_a = []
    col_b = []
    H.times do |j|
        col_a << grid_A[j][i]
        col_b << grid_B[j][i]
    end
    cols_A << col_a.join
    cols_B << col_b.join
end
puts cols_A.sort == cols_B.sort ? "Yes" : "No"