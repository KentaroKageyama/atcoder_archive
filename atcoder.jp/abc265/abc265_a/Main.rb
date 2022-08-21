X, Y, N = gets.split.map(&:to_i)
if 3 * X <= Y
    puts N * X
else
    puts (N / 3 * Y) + (N % 3 * X)
end