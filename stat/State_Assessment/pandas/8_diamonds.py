import pandas as pd

diamonds = pd.DataFrame({
    'carat': [0.23, 0.45, 1.00],
    'cut': ['Ideal', 'Premium', 'Good'],
    'price': [326, 950, 4500]
})

col = diamonds['price']
print(type(col)) 