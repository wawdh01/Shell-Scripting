cost_price = int(input("Enter Cost Price:"))
selling_price = int(input("Enter Selling Price:"))
profit_loss = cost_price - selling_price
if profit_loss > 0:
    print("Loss = " , profit_loss)
elif profit_loss == 0:
    print("No Loss or No profit as selling_price=cost_price")
else:
    print("Profit = " , profit_loss * (-1))