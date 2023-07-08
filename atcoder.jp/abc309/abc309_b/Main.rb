N = gets.to_i
grid = []
ans_grid = []
N.times do |i|
  grid << gets.chomp
end
N.times do |i|
  line = ""
  if i == 0
    N.times do |j|
      if j == 0
        line += grid[i + 1][0]
      else
        line += grid[i][j - 1]
      end
    end
  elsif i == N - 1
    N.times do |j|
      if j == N - 1
        line += grid[i - 1][-1]
      else
        line += grid[i][j + 1]
      end
    end
  else
    N.times do |j|
      if j == 0
        line += grid[i + 1][0]
      elsif j == N - 1
        line += grid[i - 1][-1]
      else
        line += grid[i][j]
      end
    end
  end
  ans_grid << line
end
ans_grid.each do |ag|
  puts ag
end