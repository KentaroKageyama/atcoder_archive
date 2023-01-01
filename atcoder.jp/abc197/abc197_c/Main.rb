N = gets.to_i
@nn = gets.split.map(&:to_i)
def or_and_xor(bits)
    t_xor = 0
    t_or = 0
    N.times do |i|
        t_or |= @nn[i]
        if bits[i] == 1 || i == N-1
            t_xor ^= t_or
            t_or = 0
        end
            
    end
    return t_xor
end
min = Float::INFINITY
(2**(N-1)).times do |i|
    min = [min, or_and_xor(i)].min
end
puts min