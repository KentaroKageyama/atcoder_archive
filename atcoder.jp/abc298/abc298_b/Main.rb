N = gets.to_i
aa = []
bb = []
N.times do |i|
    aa << gets.split.map(&:to_i)
end
N.times do |i|
    bb << gets.split.map(&:to_i)
end
def check_ab(aa, bb)
    N.times do |i|
        N.times do |j|
            if aa[i][j] == 1 && bb[i][j] == 0
                return false
            end
        end
    end
    return true
end
def roll_aa(aa)
    tmp = []
    N.times do |i|
        line = []
        N.times do |j|
            line << aa[N - j - 1][i]
        end
        tmp << line
    end
    return tmp
end
if check_ab(aa, bb)
    puts "Yes"
    exit
else
    result = false
    3.times do
        aa = roll_aa(aa)
        if check_ab(aa, bb)
            puts "Yes"
            exit
        end
    end
end
puts "No"