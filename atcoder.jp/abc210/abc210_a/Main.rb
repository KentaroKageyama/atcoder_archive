N, A, X, Y = gets.split(" ").map!(&:to_i)
result = 0

if N <= A
    result = N * X
else
    result = A * X + (N - A) * Y
end

puts result