nums = gets.chomp.chars.map(&:to_i)
nums_a = (0..9).to_a
nums_a.each do |i|
    puts i unless nums.include?(i)
end