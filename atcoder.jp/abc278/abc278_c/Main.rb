N, Q = gets.split.map(&:to_i)
follow = {}
Q.times do 
    t, a, b = gets.split.map(&:to_i)
    case t
    when 1
        follow[[a,b]] = 1
    when 2
        follow[[a,b]] = nil
    when 3
        puts follow[[a,b]] == 1 && follow[[b, a]] == 1 ? "Yes" : "No"
    end
end