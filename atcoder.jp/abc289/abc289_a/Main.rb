S = gets.chomp
S.length.times do |i|
    if S[i] == '0'
        print '1'
    else
        print '0'
    end
end
puts