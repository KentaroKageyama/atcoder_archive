X, K = gets.split.map(&:to_i)
result = X
(0..(K - 1)).each do |n|
    result = result.round(-(n + 1))
end
puts result
