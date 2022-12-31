T = gets.to_i
T.times do |i|
    cnt = 0
    a, b, c = gets.split.map(&:to_i)
    
    cnt += [b / 2, c].min
    b -= cnt * 2
    c -= cnt
    pre = cnt.clone
    
    cnt += [b / 2, a / 2].min
    a -= (cnt - pre) * 2
    b -= (cnt - pre) * 2
    pre = cnt.clone
    
    cnt += [c / 2, a].min
    a -= (cnt - pre)
    c -= (cnt - pre) * 2
    pre = cnt.clone
    
    cnt += [c % 2, a / 3].min
    a -= (cnt - pre) * 3
    c -= 1
    pre = cnt.clone
    
    cnt += a / 5
    
    puts cnt
end