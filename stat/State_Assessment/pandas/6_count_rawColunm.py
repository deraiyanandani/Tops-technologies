import pandas as pd

data = {
    'A': [10, 20, 30, 40],
    'B': [5, 15, 25, 35],
    'C': ['x', 'y', 'z', 'w']
}

df = pd.DataFrame(data)

print("Shape :",df.shape)
print("Rows:", df.shape[0])
print("Columns:", df.shape[1])
