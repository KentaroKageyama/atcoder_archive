H, W = gets.split(" ").map!(&:to_i)
grid = []

H.times do
    grid << gets.split(" ").map!(&:to_i)
end

h_list = (0..(H - 1)).to_a.combination(2).to_a
w_list = (0..(W - 1)).to_a.combination(2).to_a

list = h_list.product(w_list)

judge = 1

list.each do |l|
    judge = 0 unless grid[l[0][0]][l[1][0]] + grid[l[0][1]][l[1][1]] <= grid[l[0][1]][l[1][0]] + grid[l[0][0]][l[1][1]]
end

if judge == 1
    puts "Yes"
else
    puts "No"
end