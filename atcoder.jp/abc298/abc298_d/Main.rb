MOD = 998244353
Q = gets.to_i
s = [1]
ans = 1
Q.times do
  q = gets.split.map(&:to_i)
  case q[0]
  when 1
    x = q[1]
    s << x
    ans = (ans * 10 + x) % MOD
  when 2
    x = s.shift
    ans = ans - x * 10.pow(s.size, MOD)
  when 3
    puts ans % MOD
  end
end