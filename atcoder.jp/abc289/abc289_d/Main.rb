N = gets.to_i
@aa = gets.split.map(&:to_i)
M = gets.to_i
bb = gets.split.map(&:to_i)
@mochi = {}
bb.each do |b|
    @mochi[b] = true
end
@memo = {}
X = gets.to_i
def step_up(step)
    if step == X
        puts "Yes"
        exit
    end
    if !@mochi[step] && !@memo[step]
        @aa.each do |a|
            break if step + a > X
            step_up(step + a)
        end
    end
    @memo[step] = true
end
step_up(0)
puts "No"