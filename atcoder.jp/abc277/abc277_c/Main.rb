N = gets.to_i
@ladders = {}
@max = 0
@memo = {}
N.times do |i|
   a, b = gets.split.map(&:to_i)
   @ladders[a] ||= []
   @ladders[a] << b
   @ladders[b] ||= []
   @ladders[b] << a
end
def step_up(floor)
    @memo[floor] = 1
    @max = [@max, floor].max
    if @ladders[floor].nil?
        return
    end
    @ladders[floor].each do |n_floor|
        next if @memo[n_floor] == 1
        step_up(n_floor)
    end
end
step_up(1)
puts @max