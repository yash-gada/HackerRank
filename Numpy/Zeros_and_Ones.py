# Zeros and Ones

import numpy as np

dims = tuple(map(int, input().strip().split()))

print(np.zeros((dims), dtype=int))

print(np.ones((dims), dtype=int))
