s = gets.chomp
t = gets.chomp
dif = 0
tmp = ""

s.length.times do |i|
    if s[i] != t[i]
        dif += 1
        if tmp.empty?
            tmp = s[i]
        else
            s[i - 1] = s[i]
            s[i] = tmp
        end
    end
end

if (dif == 0 || s == t) && dif < 3
    puts "Yes"
else
    puts "No"
end