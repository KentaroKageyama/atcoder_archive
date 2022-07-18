str = gets.chomp.chars
result = str.group_by(&:itself).transform_values(&:size).find{|k, v| v == 1}
puts result.nil? ? -1 : result[0]