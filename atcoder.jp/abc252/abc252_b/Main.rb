N, K = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

max_index = a.each_index.select{|i| a[i]==a.max}
max_index = max_index.map{|m_i| m_i + 1}
result = b & max_index
puts result.empty? ? "No" : "Yes"