N = gets.to_i
s_ary = []
a_ary = []
N.times do |i|
    s, a = gets.chomp.split
    s_ary << s
    a_ary << a.to_i
end
min_idx = a_ary.index(a_ary.min)
N.times do |i|
    puts s_ary[(min_idx + i) % N]
end