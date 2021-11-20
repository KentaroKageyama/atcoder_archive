S, T, X = gets.split(" ").map!(&:to_i)

if S < T
    if S <= X && T > X
        puts "Yes"
    else
        puts "No"
    end
elsif S > T
    if S <= X || T > X
        puts "Yes"
    else
        puts "No"
    end
end    