N = gets.to_i
ss = []
N.times do |i|
  ss << gets.chomp
end 
def check(s)
  s == s.reverse
end
N.times do |i|
  N.times do |j|
    next if i == j
    if check(ss[i] + ss[j])
      puts "Yes"
      exit
    end
  end
end
puts "No"