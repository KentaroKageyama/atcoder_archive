N = gets.to_i
nums = []
N.times do
    nums << gets.chomp
end
max = 0
dir = [[1,1],[1,0],[1,-1],[0,1],[0,-1],[-1,1],[-1,0],[-1,-1]]
dir.each do |d|
    x, y = d
    N.times do |h|
        N.times do |w|
            num = 0
            n_h = h
            n_w = w
            (N - 1).times do |i|
                num = num * 10 + nums[n_w][n_h].to_i
                n_h += y
                n_w += x
                n_h %= N
                n_w %= N
            end
            num = num * 10 + nums[n_w][n_h].to_i
            max = [max, num].max
        end
    end
end
puts max