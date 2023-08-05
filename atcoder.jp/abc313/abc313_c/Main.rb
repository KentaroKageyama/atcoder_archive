N = gets.to_i
A = gets.split.map(&:to_i).sort
avg =  A.sum / N
rem =  A.sum % N
ans = 0
N.times do |i|
  if N - i <= rem
    ans += (A[i] - (avg + 1)).abs
  else
    ans += (A[i] - avg).abs
  end
end
puts ans / 2