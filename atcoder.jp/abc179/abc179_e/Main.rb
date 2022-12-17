N, X, M = gets.split.map(&:to_i)
x = X
cs = [0]
nums = []
memo = {}
N.times do |i|
    x = x ** 2 % M if i != 0
    break if memo[x] == 1
    cs << cs[-1] + x
    nums << x
    memo[x] = 1
end
ans = 0
lp_s = nums.index(x)
lp = nums[lp_s..-1]
ans += cs[lp_s]
d, m = (N - lp_s).divmod(lp.size)
ans += lp.sum * d 
ans += lp[0..(m - 1)].sum if m != 0
puts ans