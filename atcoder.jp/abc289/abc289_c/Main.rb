N, M = gets.split.map(&:to_i)
@aaa = []
M.times do |i|
    c = gets.to_i
    @aaa << gets.split.map(&:to_i)
end
ans = 0
def judge(bits)
    temp = []
    M.times do |i|
        if bits[i] != 0
            temp << @aaa[i]
        end
    end
    
    if temp.flatten.uniq.size == N
        return 1
    else
        return 0
    end
end
(2**M).times do |bits|
    ans += judge(bits)
end
puts ans