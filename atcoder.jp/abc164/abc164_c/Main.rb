N = gets.to_i
exist = {}
N.times do
    s = gets.chomp
    exist[s] = 1
end
puts exist.size