def stock_picker (stock_values)
  buy_day = 0
  sell_day = 0
  profit = 0
  stock_values.each_with_index do |current_price, current_day|
    
    for day_check in current_day...stock_values.length
      if stock_values[day_check] - current_price > profit
        buy_day = current_day
        sell_day = day_check
        profit = stock_values[day_check] - current_price
      end
    end
  end
  [buy_day,sell_day]
end

print stock_picker([17,3,6,9,15,8,6,1,10])
