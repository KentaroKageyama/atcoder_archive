N, M, X = gets.split.map(&:to_i)
books = []
N.times do
    books << gets.split.map(&:to_i)
end
def check_comp(buy_books)
    amount = 0
    algo = [0] * M
    buy_books.each do |book|
        amount += book[0]
        M.times.with_index do |b_i, i|
            b_i += 1
            algo[i] += book[b_i]
        end
    end
    return algo.all?{|a| a >= X} ? amount : Float::INFINITY
end
min_amount = Float::INFINITY
(1 << N).times do |i|
    buy_books = []
    N.times do |j|
        if (i & (1 << j)) != 0
            buy_books << books[j]
        end
    end
    min_amount = [min_amount, check_comp(buy_books)].min
end
puts min_amount == Float::INFINITY ? -1 : min_amount