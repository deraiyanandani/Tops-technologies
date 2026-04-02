import numpy as np
import matplotlib.pyplot as plt

x = np.random.randn(100000)

plt.hist(x, bins=10)
plt.title("Histogram with 10 bins")
plt.xlabel("Value")
plt.ylabel("Frequency")
plt.show()

plt.hist(x, bins=20)
plt.title("Histogram with 20 bins")
plt.xlabel("Value")
plt.ylabel("Frequency")
plt.show()

plt.hist(x, bins=50)
plt.title("Histogram with 50 bins")
plt.xlabel("Value")
plt.ylabel("Frequency")
plt.show()
