A, B, C, D, E, F, X = gets.split.map(&:to_i)

t_run_time = X / (A + C) * A
t_run_time += X % (A + C) >= A ? A : X % (A + C)
t_result = t_run_time * B

a_run_time = X / (D + F) * D
a_run_time += X % (D + F) >= D ? D : X % (D + F)
a_result = a_run_time * E

if t_result > a_result
    puts "Takahashi"
elsif t_result < a_result
    puts "Aoki"
else 
    puts "Draw"
end