N = gets.to_i
cards = gets.split(" ").map!(&:to_i).sort.reverse
a, b = 0, 0

cards.length.times do |i|
    if i % 2 == 0
        a += cards[i]
    else
        b += cards[i]
    end
end

puts a - b
