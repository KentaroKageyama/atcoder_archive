N = gets.to_i
ary = gets.split.map(&:to_i)
puts ary.index(ary.max) + 1