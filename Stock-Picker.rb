def stock_picker(stock_prices)
    max_profit = 0
    stock_array = []
    stock_prices.each_with_index do |buy_price, buy_index|
        stock_prices.each_with_index do |sell_price, sell_index|
            if (sell_index > buy_index) && ((sell_price - buy_price) > max_profit)
                max_profit = sell_price - buy_price
                stock_array[0] = buy_index
                stock_array[1] = sell_index
            end
        end
    end
    puts "Maximum profit: #{max_profit}"
    puts "Best buying day: #{stock_array[0]}"
    puts "Best selling day: #{stock_array[1]}"
end


stock_picker([17,3,6,9,15,8,6,1,10])