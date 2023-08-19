N = gets.to_i
ices = {}
N.times do |i|
  f, s = gets.split.map(&:to_i)
  ices[f] ||= []
  ices[f] << s
end
max1 = 0
max2 = 0
max_ans = 0
ices.each do |k, v|
  sorted = v.sort.reverse
  if max1 < sorted[0]
    max2 = max1.clone
    max1 = sorted[0]
  elsif max2 < sorted[0]
    max2 = sorted[0]
  end
  if sorted.size >= 2
    max_ans = [max_ans, sorted[0] + sorted[1] / 2].max
  end
end
puts [max_ans, max1 + max2].max