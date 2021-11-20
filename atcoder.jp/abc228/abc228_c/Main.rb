N, K = gets.split(" ").map!(&:to_i)
point_sums = []
N.times { point_sums << gets.split(" ").map!(&:to_i).sum }
students = point_sums.clone.sort.reverse
N.times { |i| puts students[K - 1] <= point_sums[i] + 300 ? "Yes" : "No" }