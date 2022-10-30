N, Y = gets.split.map(&:to_i)
(0..N).each do |i|
    (0..(N - i)).each do |j|
        k = N - (i + j)
        if Y == (i * 10000) + (j * 5000) + (k * 1000)
            puts [i, j, k].join(" ")
            return
        end
    end
end
puts "-1 -1 -1"