N, K = gets.split.map(&:to_i)
balls = gets.split.map(&:to_i)
ball_count = []
balls.each do |ball|
    ball_count[ball - 1] ||= 0
    ball_count[ball - 1] += 1
end
ball_count = ball_count.map{|b_c| b_c.to_i}.sort.reverse
result = 0
ball_count[K..-1]&.each do |b_c|
    result += b_c
end
puts result