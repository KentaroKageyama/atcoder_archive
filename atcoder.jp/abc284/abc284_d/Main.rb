require 'prime'
T = gets.to_i
T.times do |i|
    n = gets.to_i
    Prime.each do |pr|
        next if n % pr != 0
        if n / pr % pr == 0
            puts [pr, n / (pr ** 2)].join(" ")
        else
            t = Math.sqrt(n / pr).round
            puts [t, pr].join(" ")
        end
        break
    end
end