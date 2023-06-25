require 'prime'

N = gets.to_i
nums = gets.split.map(&:to_i)
cnt = 0
comp = false
factors_2 = []
factors_3 = []
N.times do |i|
  factors = nums[i].prime_division
  factors.each.with_index do |f, j|
    if f[0] == 2
      factors_2 << f
    elsif f[0] == 3
      factors_3 << f
    else
      if i == 0 && !comp
        comp = factors[j..-1]
        break
      else
        if comp != factors[j..-1]
          puts -1
          exit
        end
        break
      end
    end
  end
end
cnt = 0
min_2 = factors_2.min_by{|f| f[1]}.last if !factors_2.empty?
if factors_2.size == N
  cnt += factors_2.inject(0){|r, f| r + (f[1] - min_2)}
else
  cnt += factors_2.inject(0){|r, f| r + f[1]}
end
min_3 = factors_3.min_by{|f| f[1]}.last if !factors_3.empty?
if factors_3.size == N
  cnt += factors_3.inject(0){|r, f| r + (f[1] - min_3)}
else
  cnt += factors_3.inject(0){|r, f| r + f[1]}
end
puts cnt