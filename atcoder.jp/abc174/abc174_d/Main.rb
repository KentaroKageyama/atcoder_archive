N = gets.to_i
c_a = gets.chomp.chars
r_cnt = 0
c_a.each do |c|
    r_cnt += 1 if c == "R"
end
count = 0
r_cnt.times do |i|
    count += 1 if c_a[i] == "W"
end
puts count