MOD = 1_000_000_007
N, M = gets.split.map(&:to_i)
steps = [0] * N
steps.unshift(1)
M.times do |i|
    a = gets.to_i
    steps[a] = -1
end
N.times do |i|
    next if steps[i] == -1
    [1, 2].each do |step|
        if i + step <= N && steps[i + step] != -1
            steps[i + step] += steps[i]
        end
    end
end
puts steps.last % MOD
    