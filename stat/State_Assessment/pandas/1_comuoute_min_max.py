import pandas as pd

ser = pd.Series([10, 20, 30, 40, 50])

minimum = ser.min()
q1 = ser.quantile(0.25)
median = ser.median()
q3 = ser.quantile(0.75)
maximum = ser.max()

print("Minimum:", minimum)
print("25th Percentile:", q1)
print("Median:", median)
print("75th Percentile:", q3)
print("Maximum:", maximum)
