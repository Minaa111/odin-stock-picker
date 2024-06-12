def stock_picker(stock_prices)
    profits = 0
    buying_and_selling_days = Array.new

    stock_prices.each_with_index do |buying_price, buying_day|
        stock_prices.each_with_index do |selling_price, selling_day|
            if selling_day >= buying_day
                if selling_price - buying_price > profits
                    profits = selling_price - buying_price
                    buying_and_selling_days[0] = buying_day
                    buying_and_selling_days[1] = selling_day
                end
            end
        end
    end

    buying_and_selling_days
end

print stock_picker([17,3,6,9,15,8,6,1,10]); puts # Expected: [1, 4]
print stock_picker([1, 2, 3, 4, 5]); puts        # Expected: [0, 4]
print stock_picker([5, 4, 3, 2, 1]); puts        # Expected: []
print stock_picker([5]); puts                    # Expected: []
print stock_picker([3, 3, 3, 3, 3]); puts        # Expected: []
print stock_picker([1, 5]); puts                 # Expected: [0, 1]
print stock_picker([5, 1]); puts                 # Expected: []
print stock_picker([7, 1, 5, 3, 6, 4]); puts     # Expected: [1, 4]
print stock_picker([3, 2, 6, 5, 0, 3]); puts     # Expected: [1, 2]
