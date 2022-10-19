A, B = gets.split.map(&:to_i)
S = gets.chomp
regex = /^[0-9]{#{A}}-[0-9]{#{B}}$/
puts S.match?(regex) ? "Yes" : "No"