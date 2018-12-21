# function checks the best potential profit with daily stock prices
stock_prices = [10, 7, 5, 8, 11, 9]

def get_max_profit(stock_prices)
  # Action 1 : Raise an (ArgumentError, 'string') if the challenge require a certain number of element in an array or an hash
  if stock_prices.length < 2
    raise ArgumentError, 'You have to have at least to prices to make a profit'
  end

  # Action 2 : Initiaze stuff you need with first elements of the array
  min_price = stock_prices[0]
  max_profit = stock_prices[1] - stock_prices[0]

  # Action 3 : Use each_with_index when time matters
  stock_prices.each_with_index do |current_price, time|

    # Action 4 : Skip first iteration if you initialized
    next if index.zero?

    # Action 5 : Update the variables you need in each iteration
    potential_profit = current_price - min_price
    max_profit = [max_profit, potential_profit].max
    min_price = [min_price, current_price].min
  end
  max_profit
end

# Action 1 : Raise an (ArgumentError, 'string') if the challenge require a certain number of element in an array or an hash
# Action 2 : Initiaze stuff you need with first elements of the array
# Action 3 : Use each_with_index when time matters
# Action 4 : Skip first iteration if you initialized
# Action 5 : Update the variables you need in each iteration

# Pattern : We're using a greedy algorithm, meaning we choose the option that looks the best a tevery step
# The greedy algorithm can be used for "cashier & coins", "meetings and rooms", "spanning tree in a graph"
