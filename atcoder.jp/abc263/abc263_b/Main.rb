N = gets.to_i
peaples = gets.split.map(&:to_i)
now = N
count = 0
while now != 1
    now = peaples[now - 2]
    count += 1
end
puts count