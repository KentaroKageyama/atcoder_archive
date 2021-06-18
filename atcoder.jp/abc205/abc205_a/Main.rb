A, B = gets.split(" ").map!(&:to_f)
result = A / 100 * B
if result == result.to_i
    puts result.to_i
else
    puts result
end
