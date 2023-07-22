N = gets.to_i
A = gets.split.map(&:to_i)
memo = {}
next_i = 1
history = []
cnt = 0
while true
  history << next_i
  memo[next_i] = cnt
  next_i = A[next_i - 1]
  cnt += 1
  if memo[next_i]
    puts cnt - memo[next_i]
    puts history[memo[next_i]..-1].join(" ")
    exit
  end
end
