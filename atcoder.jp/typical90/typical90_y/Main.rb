require 'set'
N, B = gets.split.map(&:to_i)
@n_set = Set.new([0])
def dfs(num, nex)
    if num.digits.size == 11
       @n_set.add(num.digits.inject(:*))
        return
    end
    (nex..9).each do |n|
        n_num = num * 10 + n
        dfs(n_num, n)
    end
end
dfs(0, 1)
count = 0
@n_set.each do |n|
    m = n + B
    if m <= N && m.digits.inject(:*) == n
        count += 1 
    end
end
puts count