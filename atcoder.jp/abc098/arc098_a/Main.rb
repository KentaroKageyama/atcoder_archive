N = gets.to_i
S = gets.chomp
w_cnt = [0] * N
e_cnt = [0] * N
w = 0
e = 0
N.times do |i|
    w_cnt[i] = w
    w += 1 if S[i] == "W"
    
    r = N - i - 1
    e_cnt[r] = e
    e += 1 if S[r] == "E"
end
result_cnt = []
N.times do |i|
    result_cnt << w_cnt[i] + e_cnt[i]
end
puts result_cnt.min