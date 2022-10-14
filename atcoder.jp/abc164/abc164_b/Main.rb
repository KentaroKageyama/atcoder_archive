a, B, c, D = gets.split.map(&:to_i)
i = 0
while true
    i += 1
    if i % 2 != 0
        c -= B
    else
        a -= D
    end
    if c <= 0
        puts "Yes"
        exit
    end
    if a <= 0
        puts "No"
        exit
    end
end
    