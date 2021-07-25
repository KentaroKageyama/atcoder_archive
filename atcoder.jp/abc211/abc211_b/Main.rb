hits = []
4.times do 
    hits << gets.chomp
end
if hits.uniq.length == 4
    puts "Yes"
else
    puts "No"
end
