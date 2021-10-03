n = gets.chomp.split("").sort.reverse
a , b = "", ""
 
n.length.times do |i|
    if a.length == b.length
        if a.to_i <= b.to_i
            a += n[i]
        elsif a.to_i > b.to_i
            b += n[i]
        end
    elsif a.length < b.length
        a += n[i]
    elsif a.length > b.length
        b += n[i]
    end
end
 
puts a.to_i * b.to_i
