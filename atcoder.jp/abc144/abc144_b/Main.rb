N = gets.to_i
ary = []
(1..9).to_a.each do |i|
    (1..9).to_a.each do |j|
        ary << i * j
    end
end
puts ary.include?(N) ? "Yes" : "No"