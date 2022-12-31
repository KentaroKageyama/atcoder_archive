Q, H, S, D = gets.split.map(&:to_i)
N = gets.to_i
q_1 = Q * 4
h_1 = H * 2
s_1 = S
d_1 = D / 2
min = [q_1, h_1, s_1, d_1].min
if min == d_1
    puts (N / 2 * D) + (N % 2 * [q_1, h_1, s_1].min)
else
    puts min * N
end