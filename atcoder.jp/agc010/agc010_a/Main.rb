N = gets.to_i
nums = gets.split.map(&:to_i)
odd_count = nums.count{|n| n.odd?}
puts odd_count.even? ? "YES" : "NO"