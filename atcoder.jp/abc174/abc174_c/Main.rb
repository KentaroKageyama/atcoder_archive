K = gets.to_i
ans = 0
a = [7 % K]
K.times do |i|
    i += 1
    a << (a[i - 1] * 10 + 7) % K
end

K.times do |i|
    if a[i] == 0
        puts i + 1
        exit
    end
end

puts -1
