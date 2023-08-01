# Concatenate

import numpy as np

n, m, p = map(int, input().strip().split())

arr1 = np.array([input().strip().split() for _ in range(n)], dtype=int)
arr2 = np.array([input().strip().split() for _ in range(m)], dtype=int)

print(np.concatenate((arr1, arr2), axis=0))
