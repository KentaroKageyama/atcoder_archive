S = gets.chomp.chars.reverse
if S.index("a").nil?
    puts -1
else
    puts S.size - S.index("a")
end
