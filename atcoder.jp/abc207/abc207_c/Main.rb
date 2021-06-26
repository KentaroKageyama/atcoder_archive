N = gets.to_i
sections = []
ls = []
rs = []

N.times do
    t, l, r = gets.split(" ").map!(&:to_i)
    case t
        when 2
            r -= 0.5
        when 3
            l += 0.5
        when 4
            r -= 0.5
            l += 0.5
    end
    ls << l
    rs << r
end

ans = 0

N.times do |i|
    ((i + 1)..(N - 1)).each do |j|
        ans += 1 if [ls[i], ls[j]].max <= [rs[i], rs[j]].min
    end
end

puts ans
        