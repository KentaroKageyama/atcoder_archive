N, X = gets.split.map(&:to_i)
gram = X
donuts = []
N.times do |i|
    donuts << gets.to_i
end
result = donuts.size
gram -= donuts.sum
result += gram / donuts.min
puts result