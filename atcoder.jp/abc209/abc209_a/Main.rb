a, b = gets.split(" ").map!(&:to_i)

if b <= a
    puts 0
else
    puts b - a + 1
end

