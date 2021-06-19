x, y = gets.split(" ").map!(&:to_i)
hands = [0, 1, 2]

if x == y 
    puts x
else
    hands.delete(x)
    hands.delete(y)
    puts hands
end

    