N, M = gets.split.map(&:to_i)
ss = []
N.times{ ss << gets.chomp }
def diff_one_check(a, b)
    cnt = 0
    M.times do |i|
        if a[i] != b[i]
            cnt += 1
        end
        if cnt >= 2
            return false
        end
    end
    return true
end
per_a = ss.permutation(N).to_a
per_a.each do |per|
    judge = true
    (N - 1).times do |i|
        judge &= diff_one_check(per[i], per[i + 1])
    end
    if judge
        puts "Yes"
        exit
    end
end
puts "No"