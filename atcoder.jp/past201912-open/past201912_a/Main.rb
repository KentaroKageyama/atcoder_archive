s = gets.chomp
puts s.match?(/^\d+$/) ? s.to_i * 2 : "error"