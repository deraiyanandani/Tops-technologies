import numpy as np

a = np.array([2, 6, 1, 9, 10, 3, 27])

result = a[(a >= 5) & (a <= 10)]
print(result)
