N = gets.to_i
sr = gets.chomp
direction = 1
x = 0
y = 0

N.times do |i|
    case sr[i]
    when "S"
        case direction
        when 0
            y += 1
        when 1
            x += 1
        when 2
            y -= 1
        when 3
            x -=1
        end
    when "R"
        direction = (direction + 1) % 4
    end
end

puts "#{x} #{y}"