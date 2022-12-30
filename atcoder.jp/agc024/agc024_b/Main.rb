N = gets.to_i
num_a = []
N.times do |i|
    n = gets.to_i
    num_a << [n, i]
end
num_a = num_a.sort_by{|num| num[0]}
count = 0
max = 0
num_a << [-1, -1]
N.times do |i|
    count += 1
    if num_a[i][1] > num_a[i + 1][1]
        max = [max, count].max
        count = 0
    end
end
puts N - max