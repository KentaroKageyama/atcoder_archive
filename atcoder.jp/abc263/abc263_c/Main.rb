N, M = gets.split.map(&:to_i)
@result_ary = []
def create_ary(ary)
    if ary.size == N
        @result_ary << ary
        return
    end
    ((ary[-1] + 1)..M).each do |i|
        t_ary = ary.dup
        t_ary << i
        create_ary(t_ary)
    end
end

M.times do |i|
    i += 1
    create_ary([i])
end

@result_ary.each do |result|
    puts result.join(" ")
end