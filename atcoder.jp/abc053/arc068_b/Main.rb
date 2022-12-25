N = gets.to_i
cards = gets.split.map(&:to_i)
card_u_cnt = cards.uniq.size
puts card_u_cnt.even? ? card_u_cnt - 1 : card_u_cnt 