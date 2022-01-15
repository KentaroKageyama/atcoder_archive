N, Q = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
@num_h = {}
nums.each.with_index(1) do |n, i|
    @num_h[n] ||= []
    @num_h[n] << i
end

def check_nums(x, k)
    if !@num_h[x].nil? && @num_h[x].size >= k
        return @num_h[x][k - 1]
    end
    return -1
end

Q.times do
    x, k = gets.split.map(&:to_i)
    puts check_nums(x, k)
end