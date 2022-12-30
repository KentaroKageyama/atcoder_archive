N = gets.to_i
S = gets.chomp
abc_a = ["a", "b", "c"]
count = 0
N.times do |i|
    case S[i]
    when "a"
        next
    when "b"
        count += 2 ** i
    when "c"
        count += 2 ** (i + 1)
    end
end
puts count