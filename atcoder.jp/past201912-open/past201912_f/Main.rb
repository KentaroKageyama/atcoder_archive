S = gets.chomp
puts S.scan(/[A-Z]{1}[a-z]*[A-Z]{1}/).sort_by{|s| [s.downcase, s]}.join
