x_1, y_1, x_2, y_2 = gets.split.map(&:to_i)

def get_route5(x, y)
    route5 = []
    [1, -1].each do |p_m|
        route5 << [x + 1 * p_m, y + 2 * p_m]
        route5 << [x + 2 * p_m, y + 1 * p_m]
        route5 << [x + 1 * p_m, y - 2 * p_m]
        route5 << [x + 2 * p_m, y - 1 * p_m]
    end
    route5
end

a_1 = get_route5(x_1, y_1)
a_2 = get_route5(x_2, y_2)

puts (a_1 & a_2).empty? ? "No" : "Yes"