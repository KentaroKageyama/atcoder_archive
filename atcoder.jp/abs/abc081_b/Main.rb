N = gets.to_i
nums = gets.split(" ").map!(&:to_i)
count = 0

while true
    judge = 1
    N.times do |i|
        unless nums[i].even?
            judge = 0
        end
    end
    
    if judge == 0
        break
    end
    
    nums.map!{ |x| x / 2 }
    count += 1
end

puts count