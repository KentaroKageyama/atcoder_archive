N, M = gets.split.map(&:to_i)
shi_ary = []
M.times do |i|
    shi_ary << gets.split.map(&:to_i)
end
shi_sort_group = shi_ary.sort_by{|shi| shi[1]}.group_by{|shi| shi[0]}
result = {}
shi_sort_group.each do |pre, shis|
    shis.each.with_index(1) do |shi, i|
        result[shi] = pre.to_s.rjust(6, '0') + i.to_s.rjust(6, '0')
    end
end
shi_ary.each do |shi|
    puts result[shi]
end