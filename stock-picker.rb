def stock_picker(date_array)
    profit = 0
    combination = []

    date_array.each_with_index do |buy_price, buy_date_index|
        date_array[buy_date_index+1...-1].each_with_index do |sell_price, sell_date_index|
            if sell_price - buy_price > profit
                profit = sell_price - buy_price
                combination[0] = buy_date_index
                combination[1] = sell_date_index + buy_date_index + 1
            end
        end
    end
    return combination
end

p stock_picker([17,3,6,9,15,8,6,1,10])
