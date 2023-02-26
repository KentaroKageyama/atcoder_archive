N = gets.to_i
xx = gets.split.map(&:to_i).sort
puts xx[N..(4 * N - 1)].sum / (3 * N).to_f