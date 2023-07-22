N, M = gets.split.map(&:to_i)
GRID = []
DIR = [[-1, 0], [0, 1], [1, 0], [0, -1]]
N.times do
  GRID << gets.chomp
end
@grid_memo = {}
@pos_memo = {}
@ans = 1

def step(y, x, dir, cnt)
  step_y = y + dir[0]
  step_x = x + dir[1]
  case GRID[step_y][step_x]
  when "."
    unless @grid_memo[[step_y, step_x]]
      @ans += 1
      @grid_memo[[step_y, step_x]] = true
    end
    step(step_y, step_x, dir, cnt + 1)
  when "#"
    return y, x
  end
end

def dfs(y, x)
  4.times do |i|
    step_y, step_x = step(y, x, DIR[i], 0)
    unless @pos_memo[[step_y, step_x]]
      @pos_memo[[step_y, step_x]] = true
      dfs(step_y, step_x)
    end
  end
end

@pos_memo[[1, 1]] = true
@grid_memo[[1, 1]] = true
dfs(1, 1)
puts @ans