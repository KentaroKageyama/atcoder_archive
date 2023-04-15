N = gets.to_i
S = gets.chomp
flg = false
N.times do |i|
    if S[i] == 'o'
        flg = true
    elsif S[i] == 'x'
        puts "No"
        exit
    end
end
puts flg ? "Yes" : "No"