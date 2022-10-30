N, M = gets.split.map(&:to_i)
num = [-1] * N
M.times do |i|
    s, c = gets.split.map(&:to_i)
    if num[s - 1] != -1 && num[s - 1] != c
        puts -1
        exit
    end
    num[s - 1] = c
end
if num[0] == 0 && N != 1
    puts -1
else
    num = num.map{|n| n == -1 ? 0 : n}
    num[0] = 1 if num[0] == 0 && N != 1
    puts num.join
end
