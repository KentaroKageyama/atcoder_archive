result = []
3.times do |i|
    (1..99).each do |j|
        result << j * 100 ** i
    end
end
puts result.size
puts result.join(" ")