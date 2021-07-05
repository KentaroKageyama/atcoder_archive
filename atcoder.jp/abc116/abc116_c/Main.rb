N = gets.to_i
h = gets.split(" ").map!(&:to_i)
count = 0

while true
    if h.max == 0
        break
    end
    N.times do |i|
        b_check = 0
        if h[i] == h.max
            j = i
            max = h.max
            while j < N
                if h[j] != max
                    break
                end
                h[j] -= 1
                j += 1
            end
            count += 1
            b_check = 1
        end
        if b_check == 1
            break
        end
    end
end

puts count