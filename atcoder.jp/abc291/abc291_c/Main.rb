N = gets.to_i
S = gets.chomp
urdl = [[0, 1], [1, 0], [0, -1], [-1, 0]]
@pos = [0, 0]
p_memo = {}
p_memo[@pos] = true
def move(urdl)
    @pos = [@pos[0] + urdl[0], @pos[1] + urdl[1]]
end
S.length.times do |i|
    case S[i]
    when 'U'
        move(urdl[0])
    when 'R'
        move(urdl[1])
    when 'D'
        move(urdl[2])
    when 'L'
        move(urdl[3])
    end
    if p_memo[@pos]
        puts "Yes"
        exit
    else
        p_memo[@pos] = true
    end
end
puts "No"