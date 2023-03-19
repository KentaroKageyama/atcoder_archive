H, W = gets.split.map(&:to_i)
alp = ('A'..'Z').to_a
H.times do |i|
    line = gets.split.map(&:to_i)
    tmp =[]
    line.each do |n|
        tmp << (n == 0 ? '.' : alp[n - 1])
    end
    puts tmp.join
end
    