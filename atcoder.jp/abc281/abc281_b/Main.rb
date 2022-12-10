S = gets.chomp
regex = /^[A-Z]{1}[1-9]{1}[0-9]{5}[A-Z]{1}$/
puts S.match?(regex) ? "Yes" : "No"