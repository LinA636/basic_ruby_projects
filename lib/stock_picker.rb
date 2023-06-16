def stockPicker(stockPrices)
  sell_array = Array.new(stockPrices.length - 1) { Array.new(3) }
  stockPrices.each_with_index do |buy_price, buy_day|
    sell_array[buy_day] = getBestSellDayAndDiff(buy_day, buy_price, stockPrices)
  end

  return sell_array.max_by(&:last).first(2)
end

def getBestSellDayAndDiff(buy_day, buy_price, stockPrices)
  best_sell_day = [buy_day, stockPrices.min]
  stockPrices.each_with_index do |price, day|
    if buy_day < day
      if price - buy_price > best_sell_day[1] - buy_price
        best_sell_day = [day, price - buy_price]
      end
    end
  end
  best_sell_day.unshift(buy_day)
end

stockPrices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
stockPicker(stockPrices)
