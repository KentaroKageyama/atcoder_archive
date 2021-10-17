str = gets.chomp.chars
strs = []

str.length.times do
    strs << str.join()
    str.push(str.shift())
end

strs.sort!
puts strs.first
puts strs.last
