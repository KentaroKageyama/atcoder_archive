N, K = gets.split.map(&:to_i)
S = gets.chomp
count = 0
N.times do |i|
    case S[i]
    when "o"
        print count < K ? "o" : "x"
        count += 1
    when "x"
        print "x"
    end
end
puts