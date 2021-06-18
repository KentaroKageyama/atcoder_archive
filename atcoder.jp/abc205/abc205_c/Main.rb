a, b, c = gets.split(" ").map!(&:to_i)

if c % 2 == 0
    a *= a
    b *= b
end

puts a > b ? ">" : a < b ? "<" : "="