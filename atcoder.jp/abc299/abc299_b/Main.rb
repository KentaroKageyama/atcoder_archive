N, T = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)
R = gets.split.map(&:to_i)
t_p = 0
n_t_p = 1
t_win = 0
n_t_win = R[0]
one_c = C[0]
N.times do |i|
    if C[i] == T
        if t_win < R[i]
            t_win = R[i]
            t_p = i + 1
        end
    end
    next if t_p != 0
    if i != 0 && C[i] == one_c
        if n_t_win < R[i]
            n_t_win = R[i]
            n_t_p = i + 1
        end
    end
end
puts t_p == 0 ? n_t_p : t_p
    