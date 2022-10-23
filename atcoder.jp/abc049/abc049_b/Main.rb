H, W = gets.split.map(&:to_i)
pict = []
H.times do
    pict << gets.chomp
end
r_pict = []
pict.each do |p|
    2.times do
        r_pict << p
    end
end
puts r_pict