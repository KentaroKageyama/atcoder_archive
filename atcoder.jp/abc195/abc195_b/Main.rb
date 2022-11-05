A, B, W = gets.split.map(&:to_i)
w_g = W * 1000
min = Float::INFINITY
max = 0
(1..w_g / A + 1).each do |i|
    if A * i <= w_g && w_g <= B * i
        min = [min, i].min
        max = [max, i].max
    end
end
puts max == 0 ? "UNSATISFIABLE" : [min, max].join(" ")