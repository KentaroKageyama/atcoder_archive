N = gets.to_i

count = [0] * N

(N - 1).times do
    a, b = gets.split(" ").map!(&:to_i)
    count[a - 1] += 1
    count[b - 1] += 1
end

N.times do |i|
    if count[i] == (N - 1)
        puts "Yes"
        return
    end
end

puts "No"