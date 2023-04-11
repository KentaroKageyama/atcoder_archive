S = gets.chomp
b_index = 0
r_flg = false
result = true
S.length.times do |i|
    case S[i]
    when 'B'
        b_index += i + 1
    when 'R'
        r_flg = !r_flg
    when 'K'
        result = r_flg
    end
end
puts (b_index.odd? && result) ? "Yes" : "No"