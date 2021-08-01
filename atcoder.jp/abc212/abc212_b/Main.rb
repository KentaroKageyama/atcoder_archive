num = gets.chomp
judge = false

if num.count(num[0]) == 4
    puts "Weak"
else
    3.times do |i|
        if (num[i].to_i + 1) % 10 != num[i + 1].to_i
            judge = true
            break
        end
    end
    if judge
        puts "Strong"
    else
        puts "Weak"
    end
end
