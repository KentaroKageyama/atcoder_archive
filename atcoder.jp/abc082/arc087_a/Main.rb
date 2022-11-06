N = gets.to_i
n_hash = {}
n_ary = gets.split.map(&:to_i)
n_ary.each do |n|
    n_hash[n] ||= 0
    n_hash[n] += 1
end
result = 0
n_hash.each do |k, v|
    if k > v
        result += v
    else
        result += v - k
    end
end
puts result