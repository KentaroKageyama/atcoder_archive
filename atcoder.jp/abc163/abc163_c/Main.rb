N = gets.to_i
emp = [0] * N
line = gets.split.map(&:to_i)
line.each do |i|
    emp[i - 1] += 1
end
puts emp