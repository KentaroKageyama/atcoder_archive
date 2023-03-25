N = gets.to_i
ww = gets.split
s_a = ["and", "not", "that", "the", "you"]
puts ww.any?{|w| s_a.include?(w)} ? "Yes" : "No"