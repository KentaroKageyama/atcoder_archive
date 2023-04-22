N = gets.to_i
S = gets.chomp
flg = false
N.times do |i|
    if S[i] == "|"
        flg = !flg
    end
    if S[i] == "*" && flg
        puts "in"
        exit
    end
end
puts "out"