N = gets.to_i
f_a = []
p_a = []
N.times do |i|
    f_a << gets.split.map(&:to_i)
end
N.times do |i|
    p_a << gets.split.map(&:to_i)
end
max = 0
(2**10).times do |bits|
    f_cnt = [0] * N
    next if bits == 0
    10.times do |i|
        if bits[i] == 1
            f_a.each.with_index do |f, j|
                f_cnt[j] += 1 if f[i] == 1
            end
        end
    end
    sum = 0
    N.times{|i| sum += p_a[i][f_cnt[i]]}
    if bits == 1
        max = sum
    else
        max = [max, sum].max
    end
end
puts max