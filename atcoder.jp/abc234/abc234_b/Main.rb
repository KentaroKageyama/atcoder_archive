N = gets.to_i
points = []
N.times { points << gets.split.map(&:to_i) }
comb = points.combination(2).to_a

def calc(ary)
    a = (ary[0][0] - ary[1][0]).abs
    b = (ary[0][1] - ary[1][1]).abs
    Math.sqrt(a ** 2 + b ** 2)
end

max = 0
comb.each do |c|
    leng = calc(c)
    max = leng if max < leng
end

puts max