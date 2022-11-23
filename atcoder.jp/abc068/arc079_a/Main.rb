N, M = gets.split.map(&:to_i)
islands = Array.new(N){Array.new([])}
M.times do |i|
    a, b = gets.split.map(&:to_i)
    islands[a - 1] << b
    islands[b - 1] << a
end
islands[0].each do |i_1|
    islands[i_1 - 1].each do |i_2|
        if i_2 == N
            puts "POSSIBLE"
            exit
        end
    end
end
puts "IMPOSSIBLE"