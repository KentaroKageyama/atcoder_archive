N = gets.to_i
class_1 = []
class_2 = []
N.times do |i|
    c, p = gets.split.map(&:to_i)
    case c
    when 1
        class_1 << p
        class_2 << 0
    when 2
        class_2 << p
        class_1 << 0
    end
end
def cs(ary)
    cs_ary = [0]
    ary.each.with_index(1) do |n, i|
        cs_ary << cs_ary[i - 1] + n
    end
    return cs_ary
end
cs_1 = cs(class_1)
cs_2 = cs(class_2)
Q = gets.to_i
Q.times do |i|
    l, r = gets.split.map(&:to_i)
    puts "#{cs_1[r] - cs_1[l - 1]} #{cs_2[r] - cs_2[l - 1]}"
end