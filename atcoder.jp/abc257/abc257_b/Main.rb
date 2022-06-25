N, K, Q = gets.split.map(&:to_i)
masu = [0] * N
k_n = gets.split.map(&:to_i)
q_n = gets.split.map(&:to_i)

k_n.each do |n|
    masu[n - 1] = 1
end

q_n.each do |n|
    koma = masu.each_index.select{|i| masu[i] == 1}
    if koma[n - 1] != N - 1
        if masu[koma[n - 1] + 1] == 0
            masu[koma[n - 1]] = 0
            masu[koma[n - 1] + 1] = 1
        end
    end
end

puts masu.each_index.select{|i| masu[i] == 1}.map{|n| n += 1}.join(" ")