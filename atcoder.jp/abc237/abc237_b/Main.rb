H, W = gets.split.map(&:to_i)
hw = []
W.times do
    hw << []
end

H.times do |i|
    w = gets.split.map(&:to_i)
    w.each.with_index do |t, i|
        hw[i] << t
    end
end

hw.each do |t|
    puts t.join(" ")
end