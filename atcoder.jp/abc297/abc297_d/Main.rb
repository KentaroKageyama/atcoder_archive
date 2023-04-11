a, b = gets.split.map(&:to_i)
cnt = 0
while true
    break if a == b
    if a < b
        if b % a == 0
            cnt += b / a - 1
            break
        else
            cnt += b / a
            b -= b - b % a
        end
    elsif a > b
        if a % b == 0
            cnt += a / b - 1
            break
        else
            cnt += a / b
            a -= a - a % b
        end
    end
end
puts cnt