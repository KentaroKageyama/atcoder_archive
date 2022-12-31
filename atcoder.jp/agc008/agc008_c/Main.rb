i, o, t, j, l, s, z = gets.split.map(&:to_i)
result = (i / 2 * 2) + o + (j / 2 * 2) + (l / 2 * 2)
result += 3 if i.odd? && j.odd? && l.odd?
result += 1 if [i, j, l].count{|t| t.odd?} == 2 && [i, j, l].all?{|t| t > 0}
puts result