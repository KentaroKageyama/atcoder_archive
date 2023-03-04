require 'prime'
N = gets.to_i
def count_combination(n)
    return 1 if n == 1
    res = 1
    factors = n.prime_division
    factors.each{|f| res *= f[1] + 1}
    return res
end
result = 0
memo = {}
(N - 1).times do |i|
    i += 1
    a = i
    b = N - i
    memo[a] = count_combination(a) unless memo[a]
    memo[b] = count_combination(b) unless memo[b]
    result += memo[a] * memo[b]
end
puts result