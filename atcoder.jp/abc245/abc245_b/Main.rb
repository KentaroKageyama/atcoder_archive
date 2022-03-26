N = gets.to_i
nums = gets.split.map(&:to_i).sort.uniq

(0..2000).each do |i|
    unless nums.include?(i)
        puts i
        exit
    end
end
