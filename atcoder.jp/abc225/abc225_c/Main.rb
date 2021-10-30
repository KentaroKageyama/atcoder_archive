N, M = gets.split(" ").map!(&:to_i)
matrix = []
N.times do 
    matrix << gets.split(" ").map!(&:to_i)
end

judge = true

(N - 1).times do |i|
    if matrix[i][0] + 7 != matrix[i + 1][0]
        judge = false
    end
end

N.times do |i|
    break unless judge
    (M - 1).times do |j|
        if matrix[i][j] + 1 != matrix[i][j + 1] || ( (M - 1) != j && matrix[i][j] % 7 == 0 )
            judge = false
        end
    end
end

if judge
    puts "Yes"
else
    puts "No"
end