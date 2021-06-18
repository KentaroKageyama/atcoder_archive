N, Y = gets.split(" ").map!(&:to_i)

(0..N).each do |i|
    (0..(N - i)).each do |j|
        k = N - i - j
        if i * 10000 + j * 5000 + k * 1000 == Y
            puts "#{i} #{j} #{k}"
            exit
        end
    end
end

puts "-1 -1 -1"