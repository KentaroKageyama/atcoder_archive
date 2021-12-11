N = gets.to_i
ary = []
N.times { ary << gets.chomp }
puts ary.max_by { |v| ary.count(v) }