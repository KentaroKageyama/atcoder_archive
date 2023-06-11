W, H = gets.split.map(&:to_i)
N = gets.to_i
sb = []
N.times do |i|
  p, q = gets.split.map(&:to_i)
  sb << [p, q]
end
A = gets.to_i
aa = gets.split.map(&:to_i)
aa << W
B = gets.to_i
bb = gets.split.map(&:to_i)
bb << H
on = {}
N.times do |i|
  a = aa.bsearch{|a| a > sb[i][0]}
  b = bb.bsearch{|b| b > sb[i][1]}
  on[[b, a]] ||= 0
  on[[b, a]] += 1
end
if on.size != (A + 1) * (B + 1)
  min = 0
  max = on.max_by{|k, v| v}.last
else
  max = on.max_by{|k, v| v}.last
  min = on.min_by{|k, v| v}.last
end
puts [min, max].join(" ")