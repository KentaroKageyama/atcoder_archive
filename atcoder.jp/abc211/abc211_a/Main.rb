A, B = gets.split(" ").map!(&:to_f)
c = (A - B) / 3 + B
if c % 1 > 0
    puts c
else
    puts c.to_i
end
