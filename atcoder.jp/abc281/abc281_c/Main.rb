N, T = gets.split.map(&:to_i)
m_times = gets.split.map(&:to_i)
total = m_times.sum
time = T % total
m_times.each.with_index(1) do |m_t, i|
    if time > m_t
        time -= m_t
    elsif time <= m_t
        puts [i, time].join(" ")
        return
    end
end