S = gets.chomp
T = gets.chomp
tmp_s = S
(S.length).times do
    tmp_s = tmp_s[-1] + tmp_s[0..-2]
    if tmp_s == T
        puts "Yes"
        exit
    end
end
puts "No"