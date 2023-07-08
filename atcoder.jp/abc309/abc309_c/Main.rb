N, K = gets.split.map(&:to_i)
ary = []
N.times do |i|
  ary << gets.split.map(&:to_i)
end
hash = {}
sum = 0
ary.sort.each do |a|
  hash[a[0]] ||= 0
  hash[a[0]] += a[1]
  sum += a[1]
end
t = sum
if K >= sum
  puts 1
  exit
end
hash.each do |k, v|
  t -= v
  if K >= t
    puts k + 1
    exit
  end
end