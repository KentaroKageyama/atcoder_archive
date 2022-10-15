A, B = gets.split.map(&:to_i)
(1..10000).each do |n|
    if (n * 0.08).floor == A && (n * 0.1).floor == B
        puts n
        exit
    end
end
puts -1