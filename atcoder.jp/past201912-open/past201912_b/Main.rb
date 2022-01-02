N = gets.to_i
now = gets.to_i
(N - 1).times do
    n = gets.to_i
    if n == now
        puts "stay"
    elsif n < now
        puts "down #{now - n}"
    else
        puts "up #{n - now}"
    end
    now = n
end