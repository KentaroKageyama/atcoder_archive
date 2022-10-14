N = gets.to_i
result = 0
N.times do |i|
    i += 1
    unless i % 3 == 0 || i % 5 == 0
        result += i
    end
end

puts result