N, M = gets.split.map(&:to_i)
ss = []
N.times do |i|
    ss << gets.chomp
end
count = 0
(N - 1).times do |i|
    ((i + 1)..(N - 1)).each do |j|
        judge = true
        M.times do |k|
            judge = false if ss[i][k] == "x" && ss[j][k] == "x"
        end
        count += 1 if judge
    end
end
puts count
        