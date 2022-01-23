N, M = gets.split.map!(&:to_i)
s_n = gets.chomp.split(" ")
s_k = gets.chomp.split(" ")

s_n_hash = {}
s_n.each do |s|
    s_n_hash[s] = 0
end

s_k.each do |s|
    s_n_hash[s] = 1
end

s_n_hash.each do |k, v|
    if v == 1
        puts "Yes"
    else
        puts "No"
    end
end