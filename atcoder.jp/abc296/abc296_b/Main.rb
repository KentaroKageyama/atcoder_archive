N = 8
col = ('a'..'h').to_a
row = ('1'..'8').to_a.reverse
grid = []
N.times do |i|
    grid << gets.chomp
end
N.times do |i|
    N.times do |j|
        if grid[i][j] == '*'
            puts col[j] + row[i]
        end
    end
end
