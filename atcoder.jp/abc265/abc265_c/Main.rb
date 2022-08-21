H, W = gets.split.map(&:to_i)
@grid = []
H.times do
    @grid << gets.chomp
end
def move(h, w)
    dir = @grid[h][w]
    case dir
    when "U"
        r_h = h - 1
        r_w = w
    when "D"
        r_h = h + 1
        r_w = w
    when "L"
        r_w = w - 1
        r_h = h
    when "R"
        r_w = w + 1
        r_h = h
    end
    if r_h == -1 || r_h == H || r_w == -1 || r_w == W
        puts "#{h + 1} #{w + 1}"
        exit
    end
    return r_h, r_w
end
h = 0
w = 0
memo = {}
while true
    if memo[[h, w]]
        puts -1
        exit 
    else
        memo[[h, w]] = 1
    end
    h, w = move(h, w)
end