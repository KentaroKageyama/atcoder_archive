N = gets.to_i
a_h = gets.split.map{|n| n.to_i % 46}.tally
b_h = gets.split.map{|n| n.to_i % 46}.tally
c_h = gets.split.map{|n| n.to_i % 46}.tally

ans = 0
(0..45).each do |i|
    (0..45).each do |j|
        (0..45).each do |k|
            ans += a_h[i].to_i * b_h[j].to_i * c_h[k].to_i if (i + j + k) % 46 == 0
        end
    end
end
puts ans
