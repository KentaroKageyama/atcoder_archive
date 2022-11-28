require 'prime'
Q = gets.to_i
primes = (1..100000).map{|n| n if Prime.prime?(n)}
pri_ary = (1..100000).map{|n| (primes[n - 1] && primes[(n + 1) / 2 - 1]) ? 1 : 0}
c_sum = [0]
pri_ary.each.with_index do |p_a, i|
    c_sum << c_sum[i] + p_a
end
Q.times do |i|
    l, r = gets.split.map(&:to_i)
    puts c_sum[r] - c_sum[l - 1]
end
