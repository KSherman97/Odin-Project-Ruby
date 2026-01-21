=begin
  @author: Kyle Sherman
  @date: 01/21/2026
  @description: Take an array of stock prices, one for each day
    Return a pair of days with the best return based on a buy, sell date pair
=end

def stock_picker(stock_prices)
  highest_day = stock_prices.min
  lowest_day = stock_prices.max

  # days starting at zero, find the best day to buy and then sell
  # Highest day must start at index 1 and lowest must end at index -2
  for high_day in stock_prices[1..-1]
    if high_day > highest_day
      highest_day = high_day
    end
  end

  for low_day in stock_prices[0..-2]
    if low_day == highest_day
      break
    end

    if low_day <= lowest_day
      lowest_day = low_day
    end
  end

  stock_array = []
  stock_array.push(stock_prices.index(lowest_day))
  stock_array.push(stock_prices.index(highest_day))

  return stock_array
end

print stock_picker([17,3,6,9,15,8,6,1,10])