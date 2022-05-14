N = gets.to_i
poem = {}
order = {}
N.times do |i|
    s, t = gets.chomp.split
    t = t.to_i
    unless poem[s]
        poem[s] = t
        order[t] = i + 1 unless order[t]
    end
end

puts order[poem.max_by{|k, v| v}[1]]