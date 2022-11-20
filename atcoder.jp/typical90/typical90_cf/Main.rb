N = gets.to_i
S = gets.chomp
now = ""
stock = 0
active = 0
result = 0
N.times do |i|
    if i == 0
        now = S[i]
        stock += 1
    else
        if S[i] == now
            stock += 1
        else
            now = S[i]
            active += stock
            stock = 1
        end
    end
    result += active
end
puts result