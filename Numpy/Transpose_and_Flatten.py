# Transpose and Flatten

import numpy as np

n, m = map(int, input().strip().split())

arr = np.array([input().strip().split() for _ in range(n)], dtype=int)

print(arr.T)
print(arr.flatten())
