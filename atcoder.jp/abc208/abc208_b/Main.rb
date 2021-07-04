price = gets.to_i
coins = []
count = 0

def factorial(number)
  if number.zero?
    1
  else
    number * factorial(number - 1)
  end
end

(1..10).each do |i|
    coins << factorial(i)
end

10.times do |i|
    if price == 0
        break
    end
    if price >= coins[9 - i]
        if i == 9
            count += price
            price = 0
        else
            count += price / coins[9 - i]
            price -= (price / coins[9 - i]) * coins[9 - i]
        end
    end
end

puts count