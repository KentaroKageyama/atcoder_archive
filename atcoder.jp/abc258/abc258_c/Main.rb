N, Q = gets.split.map(&:to_i)
str = gets.chomp.chars
pos = 0
Q.times do |i|
    q, n = gets.split.map(&:to_i)
    case q
    when 1
        pos = (pos - n) % -N
    when 2
        puts str[pos + (n - 1)]
    end
end
