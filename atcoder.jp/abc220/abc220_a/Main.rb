A, B, C = gets.split(" ").map!(&:to_i)

i = 0
num = 0
result = false

while num < B
    i += 1
    num = C * i
    if num >= A && num <= B
        result = true
        break
    end
end

if result
    puts num
else
    puts -1
end