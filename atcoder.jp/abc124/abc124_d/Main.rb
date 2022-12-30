N, K = gets.split.map(&:to_i)
S = gets.chomp
ss = []
now = S[0]
count = 0
N.times do |i|
    if S[i] != now
        ss << [now, count]
        count = 0
        now = S[i]
    end
    count += 1
    if i == (N - 1)
        ss << [now, count]
    end
end
r_cnt = 0
max = 0
t_max = 0
history = []
section = 0
ss.each.with_index do |s, i|
    t_max += s[1]
    case s[0]
    when "0"
        section += s[1]
        history << section
        r_cnt += 1
        if r_cnt > K
            t_max -= history.shift
        end
        if i == ss.size - 1
            max = [max, t_max].max
        end
    when "1"
        section = s[1]
        max = [max, t_max].max
    end
end
puts max