N, K = gets.split.map(&:to_i)
aa = gets.split.map(&:to_i)
bb = gets.split.map(&:to_i)
sum = 0
N.times do |i|
    sum += (aa[i] - bb[i]).abs
end
puts sum == K || (sum < K && (K - sum) % 2 == 0) ? "Yes" : "No"