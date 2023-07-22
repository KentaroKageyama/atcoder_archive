N = gets.to_i
S = gets.chomp
abc = [false, false ,false]
N.times do |i|
  case S[i]
  when "A"
    abc[0] = true
  when "B"
    abc[1] = true
  when "C"
    abc[2] = true
  end
  if abc.all?{|a| a}
    puts i + 1
    exit
  end
end  