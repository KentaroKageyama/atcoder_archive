N, X = gets.split(" ").map!(&:to_i)
nums = []
N.times do
    line = gets.split(" ").map!(&:to_i)
    line.delete_at(0)
    if nums.empty?
        nums = line 
        next
    end
    result = []
    nums.each do |n|
        line.each do |l|
            result << n * l if n * l <= X
        end
    end
    nums = result
end

count = 0
nums.each do |n|
    count += 1 if n == X
end
puts count