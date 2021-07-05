N, K = gets.split(" ").map!(&:to_i)
numbers = gets.split(" ").map!(&:to_i)
plus_one = [0] * N

numbers = numbers.each_with_index.sort

count = 0
count += K / N
mod = K % N

mod.times do |i|
    plus_one[numbers[i][1]] = 1
end

N.times do |i|
    if plus_one[i] == 1
        puts count + 1
    else
        puts count
    end
end
