N, K = gets.split.map(&:to_i)
lr = gets.chomp
lr_g = lr.gsub(/L+/, "L").gsub(/R+/, "R").length
K.times do |i|
    if lr_g >= 3
        lr_g -= 2
    elsif lr_g == 2
        lr_g = 1
    end
end
puts N - lr_g