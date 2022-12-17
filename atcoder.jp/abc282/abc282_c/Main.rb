N = gets.to_i
s = gets.chomp
judge = false
N.times do |i|
    if s[i] == '"'
        judge = !judge
        next
    end
    if s[i] == "," && !judge
        s[i] = "."
    end
end
puts s