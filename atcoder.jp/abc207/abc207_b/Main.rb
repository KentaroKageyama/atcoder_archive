a, b, c, d = gets.split(" ").map!(&:to_i)
ball_w = a
ball_r = 0
i = 0

if c * d <= b
    puts -1
else
    while ball_w > ball_r * d
        i += 1
        ball_w += b
        ball_r += c
    end
    puts i
end
