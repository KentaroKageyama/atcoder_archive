N, M = gets.split.map(&:to_i)
if M - 2 * N <= 0
    puts M / 2
else
    puts N + (M - 2 * N) / 4
end