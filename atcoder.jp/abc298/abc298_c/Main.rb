N = gets.to_i
Q = gets.to_i
box = {}
num_box = {}
Q.times do
    q = gets.split.map(&:to_i)
    case q[0]
    when 1
        i = q[1]
        j = q[2]
        box[j] ||= []
        box[j] << i
        num_box[i] ||= []
        num_box[i] << j
    when 2
        i = q[1]
        box[i].sort!
        puts box[i].join(" ")
    when 3
        i = q[1]
        num_box[i].uniq!
        num_box[i].sort!
        puts num_box[i].join(" ")
    end
end