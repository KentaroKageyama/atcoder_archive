h, m = gets.split.map(&:to_i)
def check_time(h, m)
    a, b = h.to_s.rjust(2, "0").chars.map(&:to_i)
    c, d = m.to_s.rjust(2, "0").chars.map(&:to_i)
    return a * 10 + c <= 23 && b * 10 + d <= 59
end

while !check_time(h, m)
    m += 1
    if m >= 60
        h += 1
        m = 0
    end
    if h >= 24
        h = 0
    end
end
puts [h, m].join(" ")