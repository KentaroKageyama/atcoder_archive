N = gets.to_i
all = 0
line = []

N.times do
    a, b = gets.split(" ").map!(&:to_f)
    line << [a, b]
    all += a / b
end

point = all / 2
result = 0

N.times do |i|
    a, b = line[i][0], line[i][1]
    if a / b < point
        point -= a / b
        result += a
    else
        result += b * point
        break
    end
end

puts result