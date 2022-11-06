N = gets.to_i
vote = {}
N.times do |i|
    s = gets.chomp
    vote[s] ||= 0
    vote[s] += 1
end
max = vote.max_by{|k, v| v}.last
puts vote.select{|k, v| v == max}.keys.sort