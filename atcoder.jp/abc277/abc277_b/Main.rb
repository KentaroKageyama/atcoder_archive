N = gets.to_i
judge = true
ary = []
N.times do |i|
    s = gets.chomp
    ary << s
    regex1 = /^(H|D|C|S)/
    regex2 = /^.+(A|2|3|4|5|6|7|8|9|T|J|Q|K)$/
    judge &= s.match?(regex1) && s.match?(regex2)
end
judge &= ary.size == ary.uniq.size
puts judge ? "Yes" : "No"
