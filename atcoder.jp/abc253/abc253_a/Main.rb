a, b, c = gets.split.map(&:to_i)
if a <= c
    if a <= b && b <= c
        puts "Yes"
    else 
        puts "No"
    end
elsif a > c
    if c <= b && b <= a
        puts "Yes"
    else
        puts "No"
    end
end