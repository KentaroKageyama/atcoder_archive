N, K = gets.split.map(&:to_i)
ball_a = gets.split.map(&:to_i)
if K % ball_a.inject(:gcd) == 0 && ball_a.max >= K
    puts "POSSIBLE"
else
    puts "IMPOSSIBLE"
end