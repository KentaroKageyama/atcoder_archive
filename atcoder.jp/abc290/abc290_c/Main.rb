N, K = gets.split.map(&:to_i)
aa = gets.split.map(&:to_i)
tmp = aa.sort.uniq
cnt = 0
tmp.each do |t|
    if t == cnt
        cnt += 1
    end
end
puts [cnt, K].min