N, A, B = gets.split.map(&:to_i)
AB_LCM = A.lcm(B)

def calc_sum(num)
    terms = (N / num)
    (0.5r * terms * (num + num * terms)).to_i
end

n_sum = (0.5r * N * (N + 1)).to_i
a_sum = calc_sum(A)
b_sum = calc_sum(B)
ab_sum = calc_sum(AB_LCM)

if A == B
    puts n_sum - a_sum
else
    puts n_sum - ((a_sum + b_sum) - ab_sum)
end
