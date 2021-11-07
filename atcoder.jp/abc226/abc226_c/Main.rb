N = gets.to_i
ary = []

N.times do
    ary << gets.split(" ").map!(&:to_i)
end

memo = [0] * N

def set_memo(ary, index, memo)
   return if ary[index][1] == 0
   
   (ary[index].length - 2).times do |i|
       next if memo[ary[index][i + 2] - 1] == 1
       memo[ary[index][i + 2] - 1] = 1
       set_memo(ary, ary[index][i + 2] - 1, memo)
   end
end

memo[N - 1] = 1
set_memo(ary, N - 1, memo)

result = 0

N.times do |i|
    if memo[i] == 1
        result += ary[i][0]
    end
end

puts result
