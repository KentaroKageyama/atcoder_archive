s = gets.chomp.split
t = gets.chomp.split

def check(s, t)
    a = [s[1], s[2], s[0]]
    b = [s[2], s[0], s[1]]
    return true if t == a || t == b || s == t
    return false
end
    
puts check(s, t) ? "Yes" : "No"