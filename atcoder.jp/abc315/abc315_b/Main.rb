M = gets.to_i
D = gets.split.map(&:to_i)
harf = (D.sum + 1) / 2
D.each.with_index(1) do |d, i|
  if d < harf
    harf -= d
  else
    puts "#{i} #{harf}"
    exit
  end
end