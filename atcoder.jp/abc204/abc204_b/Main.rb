N = gets.to_i
trees = gets.split(" ").map!(&:to_i)
result = 0

N.times do |i|
    if trees[i] - 10 >= 1
        result += trees[i] - 10
    end
end

puts result