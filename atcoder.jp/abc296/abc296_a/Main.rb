N = gets.to_i
S = gets.chomp
(N - 1).times do |i|
    if S[i] == S[i + 1]
        puts "No"
        exit
    end
end
puts "Yes"