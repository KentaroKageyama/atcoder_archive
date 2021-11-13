N = gets.to_i
ans = gets.split(" ").map!(&:to_i)
 
def check_ans(ans)
    i = 0
    while i < ans
        j = 0
        i += 1
        while j < ans
            j += 1
            return true if (4*i*j+3*i+3*j) == ans
        end
    end
    return false
end


count = 0
N.times do |i|
    count += 1 unless check_ans(ans[i])
end
 
puts count