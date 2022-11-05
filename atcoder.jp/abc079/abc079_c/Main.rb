A, B, C, D = gets.chomp.chars.map(&:to_i)
op1 = ""
op2 = ""
op3 = ""
[1, -1].each do |i|
    b = B * i
    [1 , -1].each do |j|
        c = C * j
        [1, -1].each do |k|
            d = D * k
            if A + b + c + d == 7
                op1 = i == 1 ? "+" : "-"
                op2 = j == 1 ? "+" : "-"
                op3 = k == 1 ? "+" : "-"
            end
        end
    end
end
puts [A, op1, B, op2, C, op3, D].join() + "=7"