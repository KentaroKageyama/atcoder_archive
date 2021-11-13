N = gets.to_i
ans = 0

i = 1
while i * i * i <= N
  j = i
  while N >= i * j * j
    ans += N / (i * j) - j + 1
    j += 1
  end
  i += 1
end
 
puts ans