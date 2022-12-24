S = gets.chomp
memo = {}
alp = ("a".."z").to_a
alp.each do |a|
    memo[a] = 0
end
stock = []
def exit_p
    puts "No"
    exit
end
S.length.times do |i|
    t = S[i]
    case t
    when "("
        stock << []
    when ")"
        ss = stock.pop
        exit_p if ss.nil?
        ss.each do |s|
            memo[s] = 0
        end
    else
        exit_p if memo[t] == 1
        unless stock.empty?
            stock[-1] << t
        end
        memo[t] = 1
    end
end
puts "Yes"