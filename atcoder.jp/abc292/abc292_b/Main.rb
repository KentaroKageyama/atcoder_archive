N, Q = gets.split.map(&:to_i)
players = [0] * N
Q.times do
    n, x = gets.split.map(&:to_i)
    case n
    when 1
        players[x - 1] += 1
    when 2
        players[x - 1] += 2
    when 3
        puts players[x - 1] >= 2 ? "Yes" : "No"
    end
end