class UnionFind
  def initialize(size)
    @rank = Array.new(size, 0)
    @parent = Array.new(size, &:itself)
  end

  def unite(id_x, id_y)
    x_parent = get_parent(id_x)
    y_parent = get_parent(id_y)
    return if x_parent == y_parent

    if @rank[x_parent] > @rank[y_parent]
      @parent[y_parent] = x_parent
    else
      @parent[x_parent] = y_parent
      @rank[y_parent] += 1 if @rank[x_parent] == @rank[y_parent]
    end
  end

  def get_parent(id_x)
    @parent[id_x] == id_x ? id_x : (@parent[id_x] = get_parent(@parent[id_x]))
  end

  def same_parent?(id_x, id_y)
    get_parent(id_x) == get_parent(id_y)
  end
end

N, M = gets.split.map(&:to_i)
union = UnionFind.new(N)
M.times do |i|
    a, b = gets.split.map(&:to_i)
    union.unite(a - 1, b - 1)
end
parents = []
N.times do |i|
    parents << union.get_parent(i)
end
puts (M * 2 - (N * 2 - parents.uniq.size * 2)) / 2