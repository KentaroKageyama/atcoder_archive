T = gets.to_i
T.times do 
    n = gets.to_i
    tt = gets.split.map(&:to_i)
    puts tt.count{|t| t.odd?}
end