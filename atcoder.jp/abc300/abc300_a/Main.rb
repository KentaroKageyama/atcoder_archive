N, A, B = gets.split.map(&:to_i)
cc = gets.split.map(&:to_i)

N.times do |i|
    if cc[i] == A + B
        puts i + 1
    end
end