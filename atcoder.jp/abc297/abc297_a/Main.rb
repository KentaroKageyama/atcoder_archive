N, D = gets.split.map(&:to_i)
tt = gets.split.map(&:to_i)
(N - 1).times do |i|
    if tt[i + 1] - tt[i] <= D
        puts tt[i + 1]
        exit
    end
end
puts -1