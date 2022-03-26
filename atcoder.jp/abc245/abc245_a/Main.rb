a, b, c, d = gets.split.map(&:to_i)

t_win = true

if a > c
    t_win = false
elsif a == c
    if b > d
        t_win = false
    end
end

puts t_win ? "Takahashi" : "Aoki"