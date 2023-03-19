N, Q = gets.split.map(&:to_i)
called = []
history = {}
num = 1
Q.times do |i|
    e = gets.split.map(&:to_i)
    case e[0]
    when 1
        called << num
        num += 1
    when 2
        x = e[1]
        history[x] = true
    when 3
        while !called.empty?
            if history[called[0]]
                called.shift
            else
                puts called[0]
                break
            end
        end
    end
end