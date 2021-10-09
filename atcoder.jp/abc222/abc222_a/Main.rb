n = gets.chomp.chars
i = n.length

while i < 4
    i += 1
    n.unshift("0")
end

puts n.join("")