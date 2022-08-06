cards = gets.split.map(&:to_i)
cards_uniq = cards.uniq
if cards_uniq.size == 2
    if cards.count(cards_uniq[0]) == 2 || cards.count(cards_uniq[0]) == 3
        puts "Yes"
        exit
    end
end
puts "No"