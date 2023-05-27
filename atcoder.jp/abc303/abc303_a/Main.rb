N = gets.to_i
S = gets.chomp
T = gets.chomp
N.times do |i|
    if S[i] == T[i]
        next
    else
        if (S[i] == "0" && T[i] == "o") || (S[i] == "o" && T[i] == "0")
            next
        elsif (S[i] == "1" && T[i] == "l") || (S[i] == "l" && T[i] == "1")
            next
        else
            puts "No"
            exit
        end
    end
end
puts "Yes"