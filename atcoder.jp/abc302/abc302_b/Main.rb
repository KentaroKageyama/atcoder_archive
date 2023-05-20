S = "snuke"
DIR = [[1, 0], [1, 1], [0, 1], [-1, 1], [-1, 0], [-1, -1], [0, -1], [1, -1]]
H, W = gets.split.map(&:to_i)
ss = []
H.times do
    ss << gets.chomp
end
def check_s(ss, h, w)
    DIR.each do |d|
        tmp = []
        tmp << [h + 1, w + 1]
        (S.length - 1).times do |i|
            i += 1
            next_h = h + d[0] * i
            next_w = w + d[1] * i
            if next_h >= 0 && next_h < H && next_w >= 0 && next_w < W
                if ss[next_h][next_w] == S[i]
                    tmp << [next_h + 1, next_w + 1]
                    if tmp.size == 5
                        return tmp
                    end
                else
                    break
                end
            end
        end
    end
    return false
end
ans = []
H.times do |i|
    W.times do |j|
        if ss[i][j] == "s"
            if ans = check_s(ss, i, j)
                ans.each do |a|
                    puts a.join(" ")
                end
                exit
            end
        end
    end
end