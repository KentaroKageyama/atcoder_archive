S = gets.chomp
groups = S.scan(/<*>*/)
ans = 0
groups.each do |s|
    a = s.count("<")
    b = s.count(">")
    ans += a * (a - 1) / 2 + b * (b - 1) / 2 + [a, b].max
end
puts ans