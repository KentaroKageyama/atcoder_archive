A, B = gets.split.map(&:to_i)
count = 0
(A..B).each do |num|
    c_ary = num.to_s.chars
    c_ary_reverse = c_ary.reverse
    if c_ary_reverse == c_ary
        count += 1
    end
end
puts count