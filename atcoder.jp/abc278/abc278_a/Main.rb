N, K = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
K.times do
    nums.shift
    nums << 0
end
puts nums.join(" ")
