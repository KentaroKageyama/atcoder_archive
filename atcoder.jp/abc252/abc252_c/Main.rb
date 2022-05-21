N = gets.to_i
num_times = {}
10.times{|i| num_times[i] = []}
results = {}

N.times do |i|
    nums = gets.chomp.chars.map(&:to_i)
    nums.each.with_index() do |n, i|
        num_times[n] << i
    end
end

num_times = num_times.map{|k, v| [k, v.group_by(&:itself).transform_values(&:size)]}.to_h
num_times.each do |k1, v1|
    v1.each do |k2, v2|
        v1[k2] = (v2 - 1) * 10 + k2
    end
end

num_times.each do |k1, v1|
    results[k1] = num_times[k1].max_by{|k, v| v}[1]
end

puts results.min_by{|k, v| v}[1]