contests = ["ABC" , "ARC" , "AGC" , "AHC"]
3.times do
    str = gets.chomp
    contests.delete(str)
end

puts contests