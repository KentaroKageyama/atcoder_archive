N = gets.to_i
nums = (1..2 * N + 1).to_a
while true
    p nums.delete_at(0)
    a_num = gets.to_i
    exit if a_num == 0
    nums.delete(a_num)
end