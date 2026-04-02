import numpy as np
import pandas as pd

data = np.random.randint(1, 100, size=(5, 3))

df = pd.DataFrame(data, columns=["Num 1", "Num 2", "Num 3"])

print(df)
