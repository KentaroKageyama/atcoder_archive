N, K = gets.split.map(&:to_i)
towns = gets.split.map(&:to_i)
history = []
memo = [0] * N
next_town = 0
while true
    break if memo[next_town] == 1
    history << next_town
    memo[next_town] = 1
    next_town = towns[next_town] - 1
end
top = history.index(next_town)
lp = history[top..-1]
if K >= top
    puts lp[(K - top) % lp.size] + 1
else
    puts history[K] + 1
end