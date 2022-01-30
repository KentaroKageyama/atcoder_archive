str = gets.chomp

def check_kaibun(str)
    half = str.length / 2
    f = str[0..(half - 1)]
    b = str[-half..-1].reverse
    f == b ? true : false
end

if check_kaibun(str)
    puts "Yes"
    return
end

count_f = 0
count_b = 0
str.length.times do |i|
    break if str[i] != "a"
    count_f += 1
end

str.length.times do |i|
    i += 1
    break if str[-i] != "a"
    count_b += 1
end

if count_f < count_b
    str = ("a" * (count_b - count_f)) + str
end

if check_kaibun(str)
    puts "Yes"
else
    puts "No"
end
