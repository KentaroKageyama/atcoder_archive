a, b = gets.split.map(&:to_i)
(puts "Zero"; exit) if a == 0 || b == 0
if a > 0
    puts "Positive"
elsif a < 0
    if b > 0
        puts "Zero"
    elsif b < 0
        puts (a - b + 1) % 2 == 0 ? "Positive" : "Negative"
    end
end