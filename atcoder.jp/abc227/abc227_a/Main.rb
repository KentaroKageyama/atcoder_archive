N, K, A = gets.split(" ").map!(&:to_i)
if (K + A - 1) % N == 0
    puts N
else
    puts (K + A - 1) % N
end