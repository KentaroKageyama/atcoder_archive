N, A, B = gets.split.map(&:to_i)
S = gets.chomp
min = Float::INFINITY
N.times do |i|
    tmp = A * i
    (N / 2).times do |j|
        break if tmp >= min
        tmp += B if S[i + j] != S[(i + N - 1 - j) % N]
    end
    min = [min, tmp].min
end
puts min