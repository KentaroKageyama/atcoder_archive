N, K = gets.split.map(&:to_i)
ary = []
max = 0
N.times do
    ary << gets.chomp.chars
end

def count_K(s_ary)
    s_ary.flatten.group_by(&:itself).select{|k, v| v.size == K}.count
end

N.times do |i|
    i += 1
    comb = ary.combination(i)
    comb.each do |t|
        max = [max, count_K(t)].max
    end
end
puts max