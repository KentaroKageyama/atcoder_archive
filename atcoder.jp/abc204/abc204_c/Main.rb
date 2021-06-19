N, M = gets.split(" ").map!(&:to_i)
Cities = []
N.times { Cities << [] }

M.times do
    a, b = gets.split(" ").map!(&:to_i)
    Cities[a - 1] << b - 1
end

ans=0
temp = [] * N

def dfs(v, temp)
    return if temp[v]
    temp[v] = true
    Cities[v].each { |c| dfs(c, temp) }
end    

N.times do |i|
    N.times { |j| temp[j] = false }
    dfs(i, temp)
    N.times { |i| ans += 1 if temp[i] }
end

puts ans