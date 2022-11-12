N = gets.to_i
s_ary = []
common_c = nil
N.times do |i|
    temp = gets.chomp.chars.group_by(&:itself).transform_values(&:size)
    common_c ||= temp.keys
    common_c &= temp.keys
    s_ary << temp
end
common_c_min = []
common_c.size.times{|i| common_c_min << [common_c[i], Float::INFINITY]}
common_c_min = common_c_min.to_h
s_ary.each do |s_h|
    common_c.each do |c|
        unless s_h[c].nil?
            common_c_min[c] = [common_c_min[c], s_h[c]].min
        end
    end
end

result = []
common_c_min.each do |k, v|
    v.times do
        result << k
    end
end
puts result.sort.join
    