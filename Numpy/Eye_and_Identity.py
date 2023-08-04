# Eye and Identity

import numpy as np
np.set_printoptions(legacy='1.13')

n, m = map(int, input().strip().split())

#print(np.where(n==m, np.identity(n), np.eye(n, m, k=0)))
print(np.eye(n, m, k=0))
