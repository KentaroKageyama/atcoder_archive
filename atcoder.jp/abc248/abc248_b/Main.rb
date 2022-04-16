A, B, K = gets.split.map(&:to_i)
i = 0
count = A
while true
    if count >= B
        puts i
        break
    end
    count *= K
    i += 1
end