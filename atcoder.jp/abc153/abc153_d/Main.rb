h = gets.to_i
cnt = 0
while h > 0
    h /= 2
    cnt += 1
end
puts ('1' * cnt).to_i(2)