require "prime"

A, B, C, D = gets.split.map(&:to_i)

(A..B).each do |t|
    flg = false
    (C..D).each do |a|
        if Prime.prime?(t + a)
            flg = true
        end
    end
    unless flg
        puts "Takahashi"
        return
    end
end

puts "Aoki"