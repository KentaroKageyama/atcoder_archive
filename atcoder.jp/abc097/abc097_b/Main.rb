X = gets.to_i
ans = 1
(2..X).each do |i|
    x = i * i
    while x <= X
        ans = [ans, x].max
        x *= i
    end
end
puts ans