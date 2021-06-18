N = gets.to_i
now_time = 0
now_x = 0
now_y = 0
judge = 1

N.times do
    t, x, y = gets.split(" ").map!(&:to_i)

    (t - now_time).times do |i|
        if x - now_x > 0
            now_x += 1
        elsif x - now_x < 0
            now_x -= 1
        elsif y - now_y > 0
            now_y += 1
        elsif y - now_y < 0
            now_y -= 1
        elsif x == now_x && y == now_y
            now_x += 1
        end
    end
    now_time = t
    if now_x != x || now_y != y
        judge = 0
        break
    end
    
end

if judge == 1
    puts "Yes"
else
    puts "No"
end