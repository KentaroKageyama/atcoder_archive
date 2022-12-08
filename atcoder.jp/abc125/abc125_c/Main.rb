N = gets.to_i
nums = gets.split.map(&:to_i)
left = []
left << nums[0]
right = []
right << nums[-1]
(N - 1).times do |i|
    left << left[i].gcd(nums[i + 1])
    right.unshift(right[-1 - i].gcd(nums[-2 - i]))
end
ans = 0
N.times do |i|
    g = 0
    g = g.gcd(left[i - 1]) if 0 < i
    g = g.gcd(right[i + 1]) if N - 1 != i
    ans = [ans, g].max
end
puts ans