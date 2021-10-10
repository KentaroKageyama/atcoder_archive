N, M = gets.split(" ").map!(&:to_i)
players = []
hands_result = []
 
3.times do |i|
    tmp = []
    3.times do |j|
        if (i + 1) % 3 == j
            tmp << 1
        elsif (i - 1) % 3 == j
            tmp << -1
        elsif i == j
            tmp << 0
        end
    end
    hands_result << tmp 
end
 
(2 * N).times do |i|
    players << [i, 0]
end
 
player_hands = []
 
(2 * N).times do |i|
    input_line = gets.chomp
    hands = []
    M.times do |j|
        case input_line[j]
        when "G"
            hands << 0
        when "C"
            hands << 1
        when "P"
            hands << 2
        end
    end
    player_hands << hands
end
 
M.times do |i|
    N.times do |j|
        player_a = players[2 * j][0]
        player_b = players[2 * j + 1][0]
        if hands_result[player_hands[player_a][i]][player_hands[player_b][i]] == 1
            players[2 * j][1] += 1
        elsif hands_result[player_hands[player_a][i]][player_hands[player_b][i]] == -1
            players[2 * j + 1][1] += 1
        end
    end
    players.sort!
    players.sort! {|a,b| b[1] <=> a[1]}
end
 
(2 * N).times do |i|
    puts players[i][0] + 1
end