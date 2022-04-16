N = gets.to_i
nums = gets.split.map(&:to_i)
ary = Array.new(N+1){[]}
N.times do |i|
    ary[nums[i]] << i+1
end
Q = gets.to_i
Q.times do |i|
    l, r, x = gets.split.map(&:to_i)
    r_index = ary[x].bsearch_index{|b| b > r} || ary[x].size
    l_index = ary[x].bsearch_index{|b| b >= l}
    puts l_index == nil ? 0 : r_index - l_index
end