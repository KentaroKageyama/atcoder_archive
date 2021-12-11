num = gets.chomp
degits = num.size
num = num.to_i
if num.to_i >= 42
    num += 1
end

if degits == 2
    puts "AGC0" + num.to_s
else
    puts "AGC00" + num.to_s
end