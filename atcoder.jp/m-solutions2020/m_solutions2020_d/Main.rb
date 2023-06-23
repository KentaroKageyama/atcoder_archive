N = gets.to_i
nums = gets.split.map(&:to_i)
money = 1000
stock = 0
(N - 1).times do |i|
  if nums[i] < nums[i + 1]
    stock += money / nums[i]
    money = money % nums[i]
  elsif nums[i] > nums[i + 1]
    money += stock * nums[i]
    stock = 0
  end
end
money += nums[-1] * stock
puts money