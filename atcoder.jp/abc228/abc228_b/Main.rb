N, X = gets.split(" ").map!(&:to_i)
friend = gets.split(" ").map!(&:to_i)
now = X - 1
memo = [0] * N 
memo[now] = 1
count = 0

N.times do |i|
    count += 1
    now = friend[now] - 1
    break if memo[now] == 1
    memo[now] = 1
end

puts count