N = gets.to_i
n_a = gets.split.map(&:to_i)
sides = n_a.tally.select{|k, v| v >= 2}.sort.reverse
if sides.size < 2
    puts 0
else
    if sides[0][1] >= 4
        puts sides[0][0] * sides[0][0]
    else
        puts sides[0][0] * sides[1][0]
    end
end
