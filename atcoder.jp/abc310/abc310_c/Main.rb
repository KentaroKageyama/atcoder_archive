N = gets.to_i
S = []
N.times do |i|
  s = gets.chomp.chars
  S << [s, s.reverse].sort
end
puts S.tally.size
