S = "snuke"
H, W = gets.split.map(&:to_i)
grid = []
H.times do 
  grid << gets.chomp
end

que = []
if grid[0][0] == "s"
  que << [0, 0, 0]
else
  puts "No"
  exit
end
memo = {}
memo[[0, 0]] = true
dir = [[-1, 0], [0, 1], [1, 0], [0, -1]]
while !que.empty?
  # pp que
  from = que.shift
  dir.each.with_index do |d, i|
    h = from[0] + d[0]
    w = from[1] + d[1]
    s_idx = from[2]
    next if memo[[h, w]]
    if h >= 0 && w >= 0 && h < H && w < W
      # puts "h=#{h}, w=#{w}"
      if grid[h][w] == S[(s_idx + 1) % 5]
        if h + 1 == H && w + 1 == W
          puts "Yes"
          exit
        end
        que.push([h, w, s_idx + 1])
        memo[[h, w]] = true
      end
    end
  end
end
puts "No"
