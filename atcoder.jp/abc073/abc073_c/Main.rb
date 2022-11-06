N = gets.to_i
paper = {}
N.times do |i|
    n = gets.to_i
    paper[n] = paper[n].nil? ? 1 : nil
end
puts paper.values.count(1)