A, B = gets.split.map(&:to_i)
if [1, 2, 3].include?(A)
  if [1, 2, 3].include?(B)
    puts "Yes"
  else
    puts "No"
  end
elsif [4, 5, 6].include?(A)
  if [4, 5, 6].include?(B)
    puts "Yes"
  else
    puts "No"
  end
elsif [7, 8, 9].include?(A)
  if [7, 8, 9].include?(B)
    puts "Yes"
  else
    puts "No"
  end
end