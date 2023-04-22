N = gets.to_i
$stdout.sync = true
range = [0, N - 1]
20.times do |i|
    center = (range[0] + range[1]) / 2
    puts "? #{center + 1}"
    s = gets.to_i
    case s
    when 0
        range[0] = center
    when 1
        range[1] = center
    end
    break if range[1] - range[0] <= 1
end
puts "! #{range[0] + 1}"
exit