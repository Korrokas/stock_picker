#test case 1
week_1 = [17,3,6,9,15,8,6,1,10]
week_2 = [15, 2, 27, 8, 9]
week_3 = [1, 2, 3, 4, 5, 8]
week_4 = [19, 15, 12, 9, 2, 20]

def stock_picker(week)
    biggest_profit_return = [0, 0]
    current_profit = 0
    
    days_to_buy = week.select { |days| days != week[-1]}
    
    days_to_buy.each_with_index do |buy, index|

        # days_to_sell = days_to_buy.select { |days| days != (days_to_buy[0]..days_to_buy[buy])}
        sell_days = index + 1
        days_to_sell = week.slice(sell_days..-1)
        
        days_to_sell.each do |sell|
            potential_profit = sell - buy
            if potential_profit > current_profit
                current_profit = potential_profit
                biggest_profit_return = [buy, sell]
            end
        end
    end
    p biggest_profit_return
end

stock_picker(week_1)
stock_picker(week_2)
stock_picker(week_3)
stock_picker(week_4)