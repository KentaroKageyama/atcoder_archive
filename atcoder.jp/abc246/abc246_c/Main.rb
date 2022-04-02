N, K, X = gets.split.map(&:to_i)
prices = gets.split.map(&:to_i)
prices_sum = prices.sum

remain = []
div_count = 0
prices.each do |p|
    div, mod = p.divmod(X)
    remain << mod if mod != 0
    div_count += div
end
remain = remain.sort.reverse
if div_count >= K
    puts prices_sum - K * X 
elsif div_count < K
    if remain.size <= (K - div_count)
        puts 0
    else
        puts remain[(K - div_count)..-1].sum
    end
end
