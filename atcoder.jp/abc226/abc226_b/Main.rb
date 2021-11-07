N = gets.to_i
nums = []

N.times do
    nums << gets.split(" ").map!(&:to_i)
end

puts nums.uniq.length