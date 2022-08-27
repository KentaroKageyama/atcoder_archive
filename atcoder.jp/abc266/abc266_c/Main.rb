include Math

A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)
D = gets.split.map(&:to_i)
points = [A, B, C, D]

points.size.times do |i|
    x, y = points[i]
    x_a, y_a = points[(i + 1) % 4]
    x_b, y_b = points[(i - 1) % 4]
    ang = (atan2(y_b - y, x_b - x) / PI * 180) - atan2(y_a - y, x_a - x) / PI * 180
    ang = ang < 0 ? ang + 360 : ang
    unless ang < 180
        puts "No"
        exit
    end
end
puts "Yes"
