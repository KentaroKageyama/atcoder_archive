N = gets.to_i
@nn = gets.split.map(&:to_i)
def func(lcm)
    sum = 0
    N.times do |i|
        sum += (lcm - 1) % @nn[i]
    end
    return sum
end
puts func(@nn.inject(:lcm))