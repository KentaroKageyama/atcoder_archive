n = gets.to_i
n = (n * 1.08).floor

if n < 206
    puts "Yay!"
elsif n > 206
    puts ":("
else
    puts "so-so"
end
