X, Y = gets.split(" ").map!(&:to_i)
diff = Y - X
if diff <= 0
    puts 0
else
    puts diff % 10 == 0 ? diff / 10 : diff / 10 + 1
end