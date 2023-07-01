nums = gets.split.map(&:to_i)
judge = true
judge &= nums == nums.sort
judge &= nums.all?{|n| n >= 100 && n <= 675}
judge &= nums.all?{|n| n % 25 == 0}
puts judge ? "Yes" : "No"

