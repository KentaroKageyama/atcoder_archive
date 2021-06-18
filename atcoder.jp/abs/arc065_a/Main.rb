ary = ["dreamer", "dream", "eraser", "erase"]
s = gets.chomp
i = 0
result = true
s.reverse!
ary.map!{ |x| x.reverse }

while i < s.length
    judge = 0
    ary.each do |a|
        if s[i..(i + a.length - 1)] == a
            judge = 1
            i = i + a.length
        end
    end
    if judge == 0
        result = false
        break
    end
end

if result
    puts "YES"
else
    puts "NO"
end