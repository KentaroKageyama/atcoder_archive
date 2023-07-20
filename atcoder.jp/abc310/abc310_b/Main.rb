N, M = gets.split.map(&:to_i)
items = []
N.times do |i|
  items << gets.split.map(&:to_i)
end
N.times do |i|
  N.times do |j|
    next if i == j
    if items[i][0] >= items[j][0]
      if items[i][2..-1].all?{|m_i| items[j][2..-1].include?(m_i)}
        if items[i][0] == items[j][0]
          if items[i][1] < items[j][1]
            puts "Yes"
            exit
          end
        else
          puts "Yes"
          exit
        end
      end
    end
  end
end
puts "No"