N, M = gets.split.map(&:to_i)
aa = gets.split.map(&:to_i)
bb = gets.split.map(&:to_i)
a_h = {}
N.times do |i|
    a_h[aa[i]] = true
end
a_ans = []
b_ans = []
(aa + bb).sort.each.with_index do |x, i|
    if a_h[x]
        a_ans << i + 1
    else
        b_ans << i + 1
    end
end
puts a_ans.join(" ")
puts b_ans.join(" ")