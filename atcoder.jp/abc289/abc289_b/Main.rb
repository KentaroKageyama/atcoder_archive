N, M = gets.split.map(&:to_i)
aa = gets.split.map(&:to_i)
ans = []
temp = []
N.times do |i|
    i += 1
    temp << i
    unless aa.include?(i)
        ans << temp
        temp = []
    end
end
r_ans = ans.map{|a| a.reverse}
puts r_ans.flatten.join(" ")