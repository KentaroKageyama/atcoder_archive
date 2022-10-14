X = gets.to_i
bank = 100
i = 0
while true
    i += 1
    bank += bank * 1 / 100
    if X <= bank
        puts i
        exit
    end
end