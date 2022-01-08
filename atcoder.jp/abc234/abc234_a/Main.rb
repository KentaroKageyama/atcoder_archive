t = gets.to_i

def f(n)
    n ** 2 + 2 * n + 3
end

puts f(f(f(t)+t)+f(f(t)))