S = gets.chomp
zero_a = S.scan(/0*/)
zero_a.delete("")
zeros_cnt = 0
zero_a.each do |z|
    zeros_cnt += z.length / 2
end
puts S.length - zeros_cnt