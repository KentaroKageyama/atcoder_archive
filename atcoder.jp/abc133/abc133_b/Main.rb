N, D = gets.split.map(&:to_i)
coord = []
N.times do
    coord << gets.split.map(&:to_i)
end
def calc_distance(a, b)
    result = 0
    D.times do |i|
        result += (a[i] - b[i]) ** 2
    end
    return Math.sqrt(result)
end
count = 0
N.times do |i|
    (i..N - 1).each do |j|
        next if i == j
        distance = calc_distance(coord[i], coord[j])
        count += 1 if distance % 1 == 0
    end
end
puts count
        