X, K, D = gets.split.map(&:to_i)
d, m = X.abs.divmod(D)
if d > K
    puts X.abs - K * D
else
    if (K.even? && d.even?) || (K.odd? && d.odd?) 
        puts m
    else
        puts (m - D).abs
    end
end
