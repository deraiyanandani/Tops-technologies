import pandas as pd

data = {
    "Name": ["Amit", "Riya", "Karan"],
    "Age": [22, 24, 21],
    "City": ["Delhi", "Mumbai", "Pune"]
}

df = pd.DataFrame(data)
print(df)
