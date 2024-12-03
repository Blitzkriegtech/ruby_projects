def stock_picker(prices)
  min_price = prices[0]
  min_day = 0
  max_profit = 0
  buy_day = 0
  sell_day = 0

  prices.each_with_index do |price, day|
    if price < min_price
      min_price = price
      min_day = day
    end
    # Compute the initial profit in each iteration
    initial_profit = price - min_price 
    # Ensures that only if initial profit exceeds the current max profit, the best days and sell days are updated 
    if initial_profit > max_profit
      max_profit = initial_profit
      buy_day = min_day
      sell_day = day
    end
end
puts "With the given Stock prices Day [#{buy_day}] is the best day to buy and Day [#{sell_day}] to sell stocks\n to make a profit of $#{max_profit}."
end

prices = [17,3,6,9,15,8,6,1,10]
stock_picker(prices)

