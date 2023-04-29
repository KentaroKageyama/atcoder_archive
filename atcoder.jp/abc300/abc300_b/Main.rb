H, W = gets.split.map(&:to_i)
grid_a = []
grid_b = []
H.times{grid_a << gets.chomp}
H.times{grid_b << gets.chomp}

H.times do |i|
    tmp_h = []
    H.times do |j|
        tmp_h << grid_a[(i + j) % H]
    end
    W.times do |k|
        tmp_a = []
        H.times do |l|
            line = ""
            W.times do |m|
                line += tmp_h[l][(k + m) % W]
            end
            tmp_a << line
        end
        if tmp_a == grid_b
            puts "Yes"
            exit
        end
    end
end
puts "No"