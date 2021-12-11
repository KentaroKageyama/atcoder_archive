N, Q = gets.split(" ").map!(&:to_i)
heights = gets.split(" ").map!(&:to_i).sort.reverse
q_s = {}
Q.times do |i|
    q_s[i] = gets.to_i
end

q_s = q_s.sort_by { |_, v| -v }.to_h

result = {}

i = 0
count = 0
q_s.each do |k, v|
    i = count
    (i..(N - 1)).each do |j|
        if heights[j] < v
            break
        end
        count += 1
    end
    result[k] = count
end

result = result.sort.to_h

result.each do |k, v|
    puts v
end