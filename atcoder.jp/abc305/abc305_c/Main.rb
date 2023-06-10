H, W = gets.split.map(&:to_i)
grid = []
H.times do
  grid << gets.chomp
end
def check_around(grid, h, w)
  cnt = 0
  if h >= 1
    cnt += 1 if grid[h - 1][w] == "#"
  end
  if h < H - 1
    cnt += 1 if grid[h + 1][w] == "#"
  end
  if w < W - 1
    cnt += 1 if grid[h][w + 1] == "#"
  end
  if w >= 1
    cnt += 1 if grid[h][w - 1] == "#"
  end
  return cnt
end
H.times do |i|
  W.times do |j|
    if grid[i][j] == "."
      if check_around(grid, i, j) >= 2
        puts "#{i + 1} #{j + 1}"
        exit
      end
    end
  end
end