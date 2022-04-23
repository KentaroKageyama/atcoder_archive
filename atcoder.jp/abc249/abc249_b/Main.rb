str = gets.chomp
if str != str.upcase && str != str.downcase && str.length == str.chars.uniq.length
    puts "Yes"
else
    puts "No"
end