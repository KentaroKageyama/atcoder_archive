N, X = gets.split.map(&:to_i)
aa = gets.split.map(&:to_i)
hash = {}
N.times do |i|
    hash[X + aa[i]] = true
end
ans = false
N.times do |i|
    ans = true if hash[aa[i]]
end
puts ans ? "Yes" : "No"