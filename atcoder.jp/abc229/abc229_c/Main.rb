N, W = gets.split(" ").map!(&:to_i)
cheeses = []
N.times do 
    cheeses << gets.split(" ").map!(&:to_i)
end

cheeses = cheeses.sort.reverse
gram = 0
result = 0

cheeses.length.times do |i|
    if W - gram <= cheeses[i][1]
        result += cheeses[i][0] * (W - gram)
        break
    else
        result += cheeses[i][0] * cheeses[i][1]
        gram += cheeses[i][1]
    end
end

puts result