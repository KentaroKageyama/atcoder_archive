N = gets.to_i
accept = {}
N.times do |i|
    s = gets.chomp
    accept[s] = i + 1 if accept[s].nil?
end
puts accept.values