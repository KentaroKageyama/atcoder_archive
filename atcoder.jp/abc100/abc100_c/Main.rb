N = gets.to_i
n_a = gets.split.map(&:to_i)
cnt = 0
n_a.each do |n|
    t = n
    if n.even?
        while true
            break if t % 2 != 0
            t /= 2
            cnt += 1
        end
    end
end
puts cnt