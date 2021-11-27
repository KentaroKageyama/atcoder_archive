nums_s = gets.chomp.split(" ")
min = nums_s.sort_by(&:length).first.length
min.times do |i|
    i = (i + 1) * -1
    if nums_s[0][i].to_i + nums_s[1][i].to_i >= 10
        puts "Hard"
        return
    end
end

puts "Easy"