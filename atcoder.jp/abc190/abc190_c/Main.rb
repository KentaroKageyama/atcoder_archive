N, M = gets.split.map(&:to_i)
@cond = []
M.times do
    @cond << gets.split.map(&:to_i)
end
K = gets.to_i
ball_cond = []
K.times do
    ball_cond << gets.split.map(&:to_i)
end
def check_cond(dishs)
    count = 0
    @cond.each do |c|
        if dishs.index(c[0]) && dishs.index(c[1])
            count += 1
        end
    end
    @result_max = [@result_max, count].max
end
@result_max = 0
[0, 1].repeated_permutation(K) do |bits|
    dishs = []
    bits.each.with_index do |bit, i|
        dishs << ball_cond[i][bit]
    end
    check_cond(dishs)
end
puts @result_max