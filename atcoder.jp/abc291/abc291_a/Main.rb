S = gets.chomp
alp = ('A'..'Z').to_a
S.length.times do |i|
    if alp.include?(S[i])
        puts i + 1
    end
end