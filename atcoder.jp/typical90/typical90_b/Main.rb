N = gets.to_i
exit if N.odd?
ans = []
(2**N).times do |bits|
    result = ""
    cnt = 0
    cnt_l = 0
    check = true
    N.times do |i|
       result += bits[i] == 1 ? "(" : ")"
       cnt += bits[i] == 1 ? 1 : - 1
       cnt_l += 1 if bits[i] == 1
       if cnt < 0 || cnt_l > N / 2
          check = false
          break 
      end
   end
   ans << result if check
end
ans.sort.each{|a| puts a}