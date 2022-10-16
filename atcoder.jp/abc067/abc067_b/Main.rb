N, K = gets.split.map(&:to_i)
sticks = gets.split.map(&:to_i)
puts sticks.max(K).sum