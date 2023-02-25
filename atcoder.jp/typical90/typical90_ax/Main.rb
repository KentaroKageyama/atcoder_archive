MOD = 10 ** 9 + 7
N, L = gets.split.map(&:to_i)
steps = [0] * N
steps.unshift(1)
N.times do |i|
    [1, L].each do |step|
        if i + step <= N
            steps[i + step] += steps[i]
        end
    end
end
puts steps.last % MOD
        