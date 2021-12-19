S = gets.chomp
S2 = gets.chomp
alp = ("a".."z").to_a # 0-25

i = alp.index(S[0])
k = 0

while true
    break if alp[i] == S2[0]
    i += 1; k += 1
    i = 0 if i == 26
end

(S.size - 1).times do |i|
    i += 1
    pos = (alp.index(S[i]) + k) % 26
    unless S2[i] == alp[pos]
        return puts "No"
    end
end

puts "Yes"
    