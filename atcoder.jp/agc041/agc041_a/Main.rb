N, A, B = gets.split.map(&:to_i)
if (A.even? && B.even?) || (A.odd? && B.odd?)
    puts (B - A) / 2
else
    puts [A - 1, N - B].min + 1 + (B - A - 1) / 2
end