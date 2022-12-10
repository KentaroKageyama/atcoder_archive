A, B, N = gets.split.map(&:to_i)
ans = 0
def f(x)
    ((A * x) / B).floor - A * (x / B).floor
end
ans = f(N)
ans = [ans, f(B - 1)].max if (B - 1) <= N
puts ans