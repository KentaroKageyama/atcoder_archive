N, X, T = gets.split.map(&:to_i)
count = N / X
count += 1 if N % X != 0
puts T * count