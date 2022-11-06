N, M = gets.split.map(&:to_i)
fav = Array.new(M,0)
N.times do |i|
    line = gets.split.map(&:to_i)
    line.shift
    line.each do |l|
        fav[l - 1] += 1
    end
end
puts fav.count(N)