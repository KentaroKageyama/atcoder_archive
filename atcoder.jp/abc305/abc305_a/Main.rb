N = gets.to_i
if N % 5 == 0
  puts N
elsif N % 5 >= 3
  puts N - N % 5 + 5
else
  puts N - N % 5
end