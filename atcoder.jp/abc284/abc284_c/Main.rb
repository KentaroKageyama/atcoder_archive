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
nums = []
N.times do |i|
    union.unite(i, i)
end
M.times do |i|
    u, v = gets.split.map(&:to_i)
    union.unite(u - 1, v - 1)
    nums << u - 1
    nums << v - 1
end
nums.uniq!
parents = []
N.times do |i|
    parents << union.get_parent(i)
end
puts parents.uniq.size