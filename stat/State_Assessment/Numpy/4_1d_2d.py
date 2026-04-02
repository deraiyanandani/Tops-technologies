#  Convert a 1D array to a 2D array with 2 row

import numpy as np

arr = np.array([1, 2, 3, 4, 5, 6])   
arr_2d = arr.reshape(2, -1)         

print(arr_2d)
