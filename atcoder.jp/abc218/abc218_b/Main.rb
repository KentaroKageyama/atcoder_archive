array = gets.chomp.split(" ").map!(&:to_i)
alp = ("a".."z").to_a

array.each do |num|
    print alp[num - 1]
end