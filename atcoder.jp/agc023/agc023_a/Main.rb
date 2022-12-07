class Integer
  def factorial
    return 1 if self == 0
    (1..self).inject(:*)
  end

  def permutation(r)
    return 1 if self == 0
    s = self - r + 1
    (s..self).inject(:*)
  end

  def combination(r)
    r = [r, self - r].min
    return self if r == 1
    return 1 if r == 0
    self.permutation(r) / r.factorial
  end
end

N = gets.to_i
nums = gets.split.map(&:to_i)
cs = [0]
count = 0
nums.each.with_index do |n, i|
    cs << cs[i] + n
end
cs.tally.each do |k, v|
    next if v == 1
    count += v.combination(2)
end
puts count