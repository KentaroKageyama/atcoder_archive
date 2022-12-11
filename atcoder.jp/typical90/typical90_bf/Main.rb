n, k = gets.split.map(&:to_i)
mod = 10 ** 5
v = Array.new(mod, false)
ary = []
cnt = 0
until v[n] do
    v[n] = true
    ary << n
    n = (n + n.digits.sum) % mod
    cnt += 1
    (puts n; exit) if cnt == k
end
l_s = ary.index(n)
lp = ary.size - l_s
puts ary[l_s + ((k - l_s) % lp)]