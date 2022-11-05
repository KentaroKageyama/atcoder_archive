A, B, C, X, Y = gets.split.map(&:to_i)
base = X * A + B * Y
min = base.clone
if X >= Y 
    (1..X).each do |i|
        amount = base - A * i
        amount -= B * (Y - i >= 0 ? i : Y)
        amount += C * 2 * i
        min = [min, amount].min
    end
else
    (1..Y).each do |i|
        amount = base - B * i
        amount -= A * (X - i >= 0 ? i : X)
        amount += C * 2 * i
        min = [min, amount].min
    end
end
puts min