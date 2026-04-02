import matplotlib.pyplot as plt

height = [179, 155, 191, 152, 188, 177]
names = ['QA', 'WB', 'EC', 'RD', 'TE', 'YF']

plt.bar(names, height)

plt.title("Height Comparison")
plt.xlabel("Individuals")
plt.ylabel("Height (cm)")

plt.show()
