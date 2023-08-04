# Zeros and Ones

import numpy as np

n, x, y = map(int, input().strip().split())

print(np.zeros((n, x, y), dtype=int))

print(np.ones((n, x, y), dtype=int))
