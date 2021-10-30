str = gets.chomp.chars

case str.uniq.length
when 3
    puts 6
when 2
    puts 3
when 1
    puts 1
end