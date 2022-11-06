N = gets.to_i
nums = gets.split.map(&:to_i)
puts nums.uniq.size == N ? "YES" : "NO"