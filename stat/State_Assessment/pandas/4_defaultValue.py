import numpy as np
import pandas as pd

arr = np.random.rand(5, 3)
df = pd.DataFrame(arr)

print(df)
"""
 what is the default behavior for the labels for the columns? For the rows?

 => Default behaviour for label is : integer values starting from 0.

 => Default behaviour for Raw is : integer index values starting from 0.

"""