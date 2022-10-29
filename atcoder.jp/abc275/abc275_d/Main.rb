N = gets.to_i
@memo = {}
def func(n)
    return 1 if n == 0
    a = n / 2
    b = n / 3
    @memo[a] = func(a) if @memo[a].nil?
    @memo[b] = func(b) if @memo[b].nil?
    return @memo[a] + @memo[b]
end
puts func(N)