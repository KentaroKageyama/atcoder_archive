A, B, C = gets.split.map(&:to_i)
max = [A, B, C].max
s_sum = 0
[A, B, C].each do |n|
    s_sum += max - n
end
d, m = s_sum.divmod(2)
if m == 0
    puts d
else
    puts d + 2
end