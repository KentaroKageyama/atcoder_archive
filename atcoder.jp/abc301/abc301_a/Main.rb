N = gets.to_i
S = gets.chomp
t = 0
a = 0
N.times do |i|
    if S[i] == 'T'
        t += 1
    else
        a += 1
    end
end
if t > a
    puts 'T'
elsif t < a
    puts 'A'
else
    if S[-1] == 'T'
        puts 'A'
    else
        puts 'T'
    end
end