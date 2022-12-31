A, B, C, K = gets.split.map(&:to_i)
if K <= A + B
    puts [A, K].min
else
    puts A - (K - A - B)
end
