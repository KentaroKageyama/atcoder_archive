N, K = gets.split.map(&:to_i)
names = []
N.times do |i|
    names << gets.chomp
end
r_names = names[0..K - 1]
r_names.sort!
r_names.each do |n|
    puts n
end