N = gets.to_i
towns = []
N.times do
    towns << gets.split(" ").map!(&:to_i)
end

magics = []

N.times do |i|
    ((i + 1)..(N - 1)).each do |j|
        temp = [towns[i][0] - towns[j][0], towns[i][1] - towns[j][1]]
        gcd = temp[0].gcd(temp[1])
        temp = [temp[0] / gcd, temp[1] / gcd]
        magics << temp
        magics << [-temp[0], -temp[1]]
    end
end

puts magics.uniq.length