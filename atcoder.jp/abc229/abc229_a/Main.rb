str1 = gets.chomp
str2 = gets.chomp
if str1 == "##" || str2 == "##" || str1[0] == str2[0]
    puts "Yes"
else
    puts "No"
end
    