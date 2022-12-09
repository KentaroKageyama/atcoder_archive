N = gets.to_i
buttons = []
N.times do |i|
    buttons << gets.to_i
end
memo = [0] * N
i = 0
count = 0
while true
    count += 1
    break if buttons[i] == 2
    if memo[buttons[i] - 1] == 1 
        count = 0
        break
    end
    memo[i] = 1
    i = buttons[i] - 1
end
puts count == 0 ? -1 : count