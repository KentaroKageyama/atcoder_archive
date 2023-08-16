N = gets.to_i
peaples = []
N.times do |i|
  c = gets.to_i
  aa = gets.split.map(&:to_i)
  peaples << [c, aa]
end
X = gets.to_i
min = Float::INFINITY
ans = []
peaples.each.with_index(1) do |peaple, i|
  if peaple[1].include?(X)
    if min == peaple[0]
      ans << i
    elsif min > peaple[0]
      ans = []
      ans << i
      min = peaple[0]
    end
  end
end
puts ans.size
puts ans.join(" ")