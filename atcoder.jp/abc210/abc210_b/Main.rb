N = gets.to_i
str = gets.chomp
result = 0

N.times do |i|
    if str[i] == "1"
        result = i
        break
    end
end

if result % 2 == 0
    puts "Takahashi"
else
    puts "Aoki"
end
        