N, X = gets.split.map(&:to_i)
s = ""
alp = ("A".."Z").to_a
alp.each do |a|
    s += a * N
end
puts s[X - 1]
