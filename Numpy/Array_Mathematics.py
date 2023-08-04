# Array Mathematics

import numpy as np

n, m = map(int, input().strip().split())

a=[]; b=[]
for _ in range(n):
    a.append(input().strip().split())
for _ in range(n):
    b.append(input().strip().split())

a = np.array(a, dtype=int)
b = np.array(b, dtype=int)
    
#print(a, b)
print(np.add(a, b))
print(np.subtract(a, b))
print(np.multiply(a, b))
print(np.floor_divide(a, b))
print(np.mod(a, b))
print(np.power(a, b))
