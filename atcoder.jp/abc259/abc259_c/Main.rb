S = gets.chomp
T = gets.chomp

def parse_ary(str)
    ary = []
    count = 1
    (str.length - 1).times do |i|
        if str[i] == str[i + 1]
            count += 1
        elsif str[i] != str[i + 1]
            ary << [str[i], count]
            count = 1
        end
        ary << [str[i + 1], count] if i == (str.length - 2) && count
    end
    return ary
end

def exit_program
    puts "No"
    exit
end

s_ary = parse_ary(S)
t_ary = parse_ary(T)

if s_ary.size == t_ary.size
    s_ary.size.times do |i|
        if s_ary[i][0] == t_ary[i][0]
            next if s_ary[i][1] == t_ary[i][1]
            next if s_ary[i][1] < t_ary[i][1] && s_ary[i][1] > 1
            exit_program
        else
            exit_program
        end
    end
else
    exit_program
end

puts "Yes"