N = gets.to_i
ds = gets.split.map(&:to_i)
ds.sort!
abc = ds[0..(N / 2 - 1)]
arc = ds[(N / 2)..(N - 1)]
puts arc[0] - abc[-1]