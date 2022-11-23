N, Q = gets.split.map(&:to_i)
follows = Array.new(N){Array.new(N, false)}
Q.times do |i|
    line = gets.split.map(&:to_i)
    case line[0]
    when 1
        a = line[1]
        b = line[2]
        follows[a - 1][b - 1] = true
    when 2
        a = line[1]
        N.times do |i|
            follows[a - 1][i] = true if follows[i][a - 1]
        end
    when 3
        a = line[1]
        tmp = follows[a - 1].clone
        N.times do |i|
            if tmp[i]
                N.times do |j|
                    follows[a - 1][j] ||= follows[i][j] if a - 1 != j
                end
            end
        end
    end
end

N.times do |i|
    N.times do |j|
        print follows[i][j] ? "Y" : "N"
    end
    puts
end