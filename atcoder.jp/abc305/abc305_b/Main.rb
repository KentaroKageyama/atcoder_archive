alp = ("A".."G").to_a
dist = [3, 1, 4, 1, 5, 9]
p, q = gets.chomp.split
p_idx = alp.index(p)
q_idx = alp.index(q)
if p_idx < q_idx
  puts dist[p_idx..(q_idx - 1)].sum
elsif p_idx > q_idx
  puts dist[q_idx..(p_idx - 1)].sum
end
