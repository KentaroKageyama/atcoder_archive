T = "oxxoxxoxxoxx"
s = gets.chomp

i = 0
check = false
while s.length + i < 13
    s.size.times do |j|
        if s[j] != T[i + j]
            break
        end
        
        if j + 1 == s.size
            check = true
        end
    end
    if check
        puts "Yes"
        return
    end
    i += 1
end

puts "No"