N, A, B = gets.split.map(&:to_i)
puts (A - B).abs.even? ? "Alice" : "Borys"