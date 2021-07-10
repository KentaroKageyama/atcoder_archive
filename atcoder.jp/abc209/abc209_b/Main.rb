n, x = gets.split(" ").map!(&:to_i)
items = gets.split(" ").map(&:to_i)

n.times do |i|
    if (i + 1) % 2 == 0
        x -= items[i] - 1
    else
        x -= items[i]
    end
end

if x >= 0
    puts "Yes"
else
    puts "No"
end
