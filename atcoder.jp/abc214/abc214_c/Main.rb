N = gets.to_i
out_times = gets.split(" ").map!(&:to_i)
get_times = gets.split(" ").map!(&:to_i)

result_times = []

min_times = get_times[0]

(N - 1).times do |i|
    if min_times < out_times[(-1 - i)..-1].sum
        break
    end
    if min_times > out_times[(-1 - i)..-1].sum + get_times[-1 - i]
        min_times = out_times[(-1 - i)..-1].sum + get_times[-1 - i]
    end
end

result_times[0] = min_times

(N - 1).times do |i|
    if result_times[i] + out_times[i] < get_times[i + 1]
        result_times[i + 1] = result_times[i] + out_times[i]
    else
        result_times[i + 1] = get_times[i + 1]
    end
end

puts result_times