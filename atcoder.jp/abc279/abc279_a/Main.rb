S = gets.chomp
count = 0
S.length.times do |i|
    case S[i]
    when "w"
        count += 2
    when "v"
        count += 1
    end
end
puts count