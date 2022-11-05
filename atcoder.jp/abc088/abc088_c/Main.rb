@grid = []
3.times do
    @grid << gets.split.map(&:to_i)
end
def check_grid(a1, a2, a3)
    result = true
    3.times do |i|
        t1 = @grid[i][0] - a1
        t2 = @grid[i][1] - a2
        t3 = @grid[i][2] - a3
        result &= (t1 == t2) && (t2 == t3)
    end
    return result
end
(0..100).each do |a1|
    (0..100).each do |a2|
        (0..100).each do |a3|
            if check_grid(a1, a2, a3)
                puts "Yes"
                exit
            end
        end
    end
end
puts "No"