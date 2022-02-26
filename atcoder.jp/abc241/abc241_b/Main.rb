N, M = gets.split.map(&:to_i)
a_s = gets.split.map(&:to_i)
b_s = gets.split.map(&:to_i)

M.times do |i|
    if index = a_s.index(b_s[i])
        a_s.delete_at(index)
    else
        puts "No"
        return
    end
end

puts "Yes"
