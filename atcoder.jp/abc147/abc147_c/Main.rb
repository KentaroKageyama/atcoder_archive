N = gets.to_i
@aa = []
N.times do |i|
    a = gets.to_i
    tmp = []
    a.times do |i|
        tmp << gets.split.map(&:to_i)
    end
    @aa << tmp
end
def check_lie(bit)
    bit = bit.rjust(N, "0")
    check = true
    N.times do |i|
        next if bit[i] == '0'
        check &= @aa[i].all? do |x, y|
            bit[x - 1] == y.to_s
        end
    end
    return check
end
max = 0
(2**N).times do |i|
    max = i.to_s(2).count('1') if check_lie(i.to_s(2))
end
puts max