N = gets.to_i
rice_cakes = []

N.times do |i|
    rice_cakes << gets.to_i
end

puts rice_cakes.uniq.length