N = gets.to_i
S = gets.chomp.chars
alp = ("A".."Z").to_a
S.each do |c|
    index = (alp.index(c) + N) % 26
    print alp[index]
end
