N = gets.to_i
lines = []
N.times do |i|
    line = []
    (0..i).each do |j|
        if j == 0 || j == i
            line <<  1
        else
            line << lines[i - 1][j - 1] + lines[i - 1][j]
        end
    end
    lines << line
end

lines.each do |line|
    puts line.join(" ")
end